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
