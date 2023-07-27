import SwiftUI
import Firebase

struct TestEmailView: View {
    @State private var username: String = ""
    @State private var email: String = ""
    
    var body: some View {
        VStack {
            TextField("Username", text: $username)
            TextField("Email", text: $email)
            
            Button(action: {
                let userId = UUID().uuidString // Usually, you would get the UID from Firebase Authentication after a user signs up
                let newUser = User(uid: userId, email: self.email, username: self.username)
                self.writeUserData(user: newUser)
            }) {
                Text("Submit")
            }
        }
        .padding()
    }
    
    func writeUserData(user: User) {
        let ref = Database.database().reference()
        ref.child("users").child(user.uid).setValue(["email": user.email, "username": user.username])
    }
    
    
}

struct TestEmailView_Previews: PreviewProvider {
    static var previews: some View {
        TestEmailView()
    }
}

