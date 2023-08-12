import Foundation
import SwiftUI
struct SearchBar: View {
    @Binding var text: String
    
    var body: some View {
        HStack {
            TextField("Search", text: $text)
                .padding(8)
                .background(Color(.systemGray5))
                .cornerRadius(8)
                .padding(.horizontal, 8)
            
            if !text.isEmpty {
                Button(action: {
                    text = ""
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.gray)
                        .padding(8)
                }
            }
        }
    }
}

struct LibraryView: View {
    @State var articleList: [Article]
    @State private var currentPage = 1
    @State private var searchText = ""
    let articlesPerPage = 10
    
    var filteredArticles: [Article] {
        if searchText.isEmpty {
            return articleList
        } else {
            return articleList.filter { article in
                article.title.localizedCaseInsensitiveContains(searchText) || article.description.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
    
    var totalPageCount: Int {
        (filteredArticles.count + articlesPerPage - 1) / articlesPerPage
    }
    
    var startIndex: Int {
        (currentPage - 1) * articlesPerPage
    }
    
    var endIndex: Int {
        min(currentPage * articlesPerPage, filteredArticles.count)
    }
    
    var body: some View {
        VStack {
            Text("Library ")
                .font(Font.custom("Epilogue", size: 26).weight(.medium))
                .lineSpacing(32)
            
            NavigationView {
                VStack {
                    SearchBar(text: $searchText)
                    
                    List {
                        ForEach(startIndex..<endIndex, id: \.self) { index in
                            NavigationLink(destination: ArticleView(article: filteredArticles[index])) {
                                VStack {
                                    Text(filteredArticles[index].title)
                                        .bold()
                                        .font(.title3)
                                    Text(filteredArticles[index].description)
                                        .font(.subheadline)
                                }
                            }
                        }
                    }
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            HStack {
                                Button(action: {
                                    if currentPage > 1 {
                                        currentPage -= 1
                                    }
                                }) {
                                    Image(systemName: "chevron.left")
                                }
                                
                                Text("Page \(currentPage) of \(totalPageCount)")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                
                                Button(action: {
                                    if currentPage < totalPageCount {
                                        currentPage += 1
                                    }
                                }) {
                                    Image(systemName: "chevron.right")
                                }
                            }
                        }
                    }
                }
            }
        }
        .background(Color(red: 0.98, green: 0.98, blue: 0.98))
        .cornerRadius(40)
    }
}


struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        let articles = [
            Article(id: "696969", title: "The effects of awesome", author: "Jondoe", text: "Many people are awesome.", description: "This is gonna win a Pultizer", datePublished: "1/1/1970")
        ]

        LibraryView(articleList: articles)
    }
}
