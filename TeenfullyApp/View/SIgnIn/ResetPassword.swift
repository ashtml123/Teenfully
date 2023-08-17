import SwiftUI
import FirebaseAuth

struct ResetPassword: View {
    @State private var email: String = ""
    @State private var alertMessage: String = ""
    @State private var showAlert: Bool = false

    var body: some View {
        VStack {
            Text("Reset Password")
                .font(.largeTitle)
                .padding(.bottom, 20)
            
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("Send", action: resetPassword)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .padding(.top, 10)

        }
        .padding()
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Password Reset"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
        }
    }

    func resetPassword() {
        Auth.auth().sendPasswordReset(withEmail: email) { error in
            if let error = error {
                alertMessage = "Error sending password reset email: \(error.localizedDescription)"
            } else {
                alertMessage = "Password reset email sent. Check your inbox for further instructions."
            }
            showAlert = true
        }
    }
}

struct ResetPassword_Previews: PreviewProvider {
    static var previews: some View {
        ResetPassword()
    }
}
