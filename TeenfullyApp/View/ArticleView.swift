//
//  ArticleView.swift
//  TeenfullyApp
//
//  Created by Rohan Tamhankar on 8/4/23.
//

import SwiftUI

struct ArticleView: View {
    var article: Article
    
    var body: some View {
        Text(article.title)
            .font(.headline)
        Text("By \(article.author)")
            .font(.subheadline)
        Text("Published \(article.datePublished)")
            .font(.caption)
        Text(article.text)
            .multilineTextAlignment(.leading)
        
    }
}

struct ArticleView_Previews: PreviewProvider {
    static let articles = Articles()
    static var previews: some View {
        ArticleView(article:articles.articles[0])
    }
}
