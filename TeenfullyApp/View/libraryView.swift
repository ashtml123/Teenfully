import Foundation
import SwiftUI

struct LibraryView: View {
    @State var articleList: [Article]
    @State private var currentPage = 1
    let perPage = 10

    var totalPages: Int {
        (articleList.count + perPage - 1) / perPage
    }

    var startIndex: Int {
        (currentPage - 1) * perPage
    }

    var endIndex: Int {
        min(currentPage * perPage, articleList.count)
    }

    var body: some View {
        VStack {
            Text("Library ")
                .font(Font.custom("Epilogue", size: 26).weight(.medium))
                .lineSpacing(32)
            NavigationView {
                List {
                    ForEach(startIndex..<endIndex, id: \.self) { index in
                        NavigationLink(destination: ArticleView(article: articleList[index])) {
                            VStack {
                                Text(articleList[index].title)
                                    .bold()
                                    .font(.title3)
                                Text(articleList[index].description)
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
                            Button(action: {
                                if currentPage < totalPages {
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
