import Foundation
import SwiftUI

struct LibraryView: View {
    @State var articleList: [Article]

//TODO Add pagination and tags
    
    
    var body: some View {
        VStack {
            Text("Library ")
                .font(Font.custom("Epilogue", size: 26).weight(.medium))
                .lineSpacing(32)
            NavigationView {
                List {
                    ForEach(articleList) { article in // Use forEach directly on articleList
                        NavigationLink(destination: ArticleView(article: article)) {
                            VStack{
                                Text(article.title)
                                    .bold()
                                    .font(.title3)
                                Text(article.description)
                                    .font(.subheadline)
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
