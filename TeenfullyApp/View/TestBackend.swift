//

import SwiftUI
import Firebase

struct TestBackend: View {
    
    func writeUserData(user: User) {
        let ref = Database.database().reference()
        ref.child("users").child(user.uid).setValue(["email": user.email, "username": user.username])
    }
    
    func readUserData(userId: String) {
        let ref = Database.database().reference().child("users").child(userId)
        ref.observeSingleEvent(of: .value, with: { (snapshot) in
            let value = snapshot.value as? NSDictionary
            let username = value?["username"] as? String ?? ""
            let email = value?["email"] as? String ?? ""
            print("Username: \(username), Email: \(email)")
        }) { (error) in
            print(error.localizedDescription)
        }
    }

    var body: some View {
        Text("Hello World")
    }
}

struct TestBackend_Previews: PreviewProvider {
    static var previews: some View {
        TestBackend()
    }
}
