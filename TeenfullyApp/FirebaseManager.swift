import Firebase
import FirebaseFirestore
import SwiftUI
import Firebase
import FirebaseAuth
import GoogleDataTransport
import Foundation
import FirebaseCore
import FirebaseAuth
import GoogleSignIn
import GoogleSignInSwift

struct UserProfile{
    var username: String
    var age: Int
}

class FirebaseManager {
    static let shared = FirebaseManager()
    var currentID = ""
    let db: Firestore
    
    private init() {
        db = Firestore.firestore()
    }
    
    // Example function to fetch all articles from the database
    func fetchArticlesFromFirebase(completion: @escaping ([Article]?, Error?) -> Void) {
        let collectionRef = db.collection("articles")
        collectionRef.getDocuments { snapshot, error in
            if let error = error {
                completion(nil, error)
            } else {
                var articles = [Article]()
                for document in snapshot!.documents {
                    if let title = document.data()["title"] as? String,
                       let author = document.data()["author"] as? String,
                       let text = document.data()["text"] as? String,
                        let description = document.data()["description"] as? String,
                        let datePublished = document.data()["datePublished"] as? Date{
                        let article = Article(id: document.data()["id"] as! String, title: title, author:author,text:text,description: description,datePublished: datePublished)
                        // Add other fields to the article if needed
                        articles.append(article)
                    }
                }
                completion(articles, nil)
            }
        }
    }
    
    
    func addArticlesToFirebase(article:Article){
        let articles = db.collection("articles")
        var newArticle = article
        newArticle.id=UUID().uuidString
        articles.document(newArticle.id).setData([
            "title":newArticle.title,
            "author":newArticle.author,
            "text":newArticle.text,
            "description":newArticle.description,
            "datePublished": newArticle.datePublished
        ]){error in
            if let error=error{
                print("Error adding article: \(error)")
            }
            else{
                print("Successful article addition!")
            }
        }
    }
    
    func saveUserProfile(uid: String, username: String, age: Int) {
        let userRef = db.collection("users").document(uid)
        userRef.setData([
            "username": username,
            "age": age
        ]) { error in
            if let error = error {
                print("Error saving user profile: \(error.localizedDescription)")
            } else {
                print("User profile saved successfully.")
            }
        }
    }
    func fetchUserProfile(completion: @escaping (UserProfile?) -> Void) {
        let userRef = db.collection("users").document(currentID)
        
        userRef.getDocument { snapshot, error in
            if let error = error {
                print("Error fetching user profile: \(error.localizedDescription)")
                return completion(nil)
            }
            
            if let data = snapshot?.data(),
               let username = data["username"] as? String,
               let age = data["age"] as? Int {
                let userProfile = UserProfile(username: username, age: age)
                return completion(userProfile)
            } else {
                // Document doesn't exist or data is missing
                return completion(nil)
            }
        }
    }
    
}
