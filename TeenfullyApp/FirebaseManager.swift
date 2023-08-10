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

/* Cloud Firestore old rules:
 rules_version = '2';
 service cloud.firestore {
   match /databases/{database}/documents {
     match /{document=**} {
       allow read, write: if request.auth != null;
     }
   }
 }

 */

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
    
    func fetchArticlesFromFirebase(completion: @escaping ([Article]?, Error?) -> Void) {
        let collectionRef = db.collection("articles")
        collectionRef.getDocuments { snapshot, error in
            if let error = error {
                completion(nil, error)
            } else {
                var articles = [Article]()
                for document in snapshot!.documents {
                    print("ATTENTION: BELOW THERE LIES A THING")
                    print(document.data().values)
                    if let title = document.data()["title"] as? String,
                       let author = document.data()["author"] as? String,
                       let text = document.data()["text"] as? String,
                       let description = document.data()["description"] as? String,
                       let datePublished = document.data()["datePublished"] as? String,
                       let id = document.documentID as? String{
                        let article = Article(id: id, title: title, author:author,text:text,description: description,datePublished: datePublished)
                        articles.append(article)
                        print(title)
                    }
                }
                completion(articles, nil)
            }
        }
    }
    
    
    //Pass data locally
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
    
    //send daily checkin data
    
    func sendDailyCheckin(resp: Measure){
        let responses = db.collection("dailyresp")
        var newResp = resp
        newResp.id=UUID().uuidString
        responses.document(newResp.id).setData([
            "user":newResp.user,
            "anxiety":newResp.anxiety,
            "behavior":newResp.behavior,
            "cognitive":newResp.cognitive,
            "date":newResp.date,
            "decision":newResp.decision,
            "mood":newResp.mood,
            "physical":newResp.physical,
            "social":newResp.social,
            "substance":newResp.substance
        ]){error in
            if let error=error{
                print("Error adding response: \(error)")
            }
            else{
                print("Successful response addition")
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
