import Foundation
import SwiftUI

struct LibraryView: View {
    @EnvironmentObject var articles: Articles
    var articleList: [Article] {
        articles.articles
    }
    
    var body: some View {
        VStack {
            Text("Library ")
                .font(Font.custom("Epilogue", size: 26).weight(.medium))
                .lineSpacing(32)
                .foregroundColor(Color(red: 0.22, green: 0.11, blue: 0.20))
                .offset(x: -45, y: -289)
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
        .frame(width: 375, height: 812)
        .background(Color(red: 0.98, green: 0.98, blue: 0.98))
        .cornerRadius(40)
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
