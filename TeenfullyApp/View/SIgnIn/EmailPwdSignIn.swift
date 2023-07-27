import SwiftUI
import Firebase

struct EmailPwdSignIn: View {
    @State private var email: String = ""
    @State private var password: String = ""

    var body: some View {
        VStack {
            TextField("Email", text: $email)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .padding()
                .border(Color.gray, width: 0.5)
            
            SecureField("Password", text: $password)
                .padding()
                .border(Color.gray, width: 0.5)
            
            Button(action: {
                Auth.auth().signIn(withEmail: self.email, password: self.password) { authResult, error in
                    if let error = error {
                        print("Authentication failed with error: \(error.localizedDescription)")
                    } else {
                        print("Authentication succeeded.")
                    }
                }
            }) {
                Text("Log In")
            }
        }
        .padding()
    }
}

struct EmailPwdSignIn_Previews: PreviewProvider {
    static var previews: some View {
        EmailPwdSignIn()
    }
}
