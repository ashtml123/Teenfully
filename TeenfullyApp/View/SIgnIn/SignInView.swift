import SwiftUI
import Firebase
import FirebaseAuth
import GoogleDataTransport
import Foundation
import FirebaseCore
import FirebaseAuth
import GoogleSignIn
import GoogleSignInSwift
struct LogoView: View {
    var body: some View {
        HStack {
            Image("Original Logo Symbol")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 50) // Adjust the height as needed
            Text("Teenfully")
                .foregroundColor(.white)
                .font(.system(size: 30))
        }
    }
}
//TODO support logging out as well
//TODO support password changing
//TODO support password resetting
struct SignInView: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var authenticated = false
    @State var failed = false
    @State var errorMessage: String = ""
    @Environment(\.dismiss) var dismiss
    let db = FirebaseManager.shared.db
    
    
    func getHere(){
        print("Got here")
    }
    func login() {
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if error != nil {
                failed = true
                errorMessage=error?.localizedDescription ?? ""
            } else {
                failed = false
                print("success")
                FirebaseManager.shared.currentID=result?.user.uid ?? ""
                authenticated=true
                print("User \( result?.user.uid) signed in")
            }
        }
    }
    
    private func sWithGoogle() ->Void{
        Task {
            if await signInWithGoogle() == true {
                dismiss()
            }
        }
    }
    func signInWithGoogle() async -> Bool {
        guard let clientID = FirebaseApp.app()?.options.clientID else {
            fatalError("No client ID found in Firebase configuration")
        }
        let config = GIDConfiguration(clientID: clientID)
        GIDSignIn.sharedInstance.configuration = config
        
        guard let windowScene = await UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let window = await windowScene.windows.first,
              let rootViewController = await window.rootViewController else {
            print("There is no root view controller!")
            return false
        }
        
        do {
            let userAuthentication = try await GIDSignIn.sharedInstance.signIn(withPresenting: rootViewController)
            
            let user = userAuthentication.user
            guard let idToken = user.idToken else { throw AuthenticationError.tokenError(message: "ID token missing") }
            let accessToken = user.accessToken
            
            let credential = GoogleAuthProvider.credential(withIDToken: idToken.tokenString,
                                                           accessToken: accessToken.tokenString)
            
            let result = try await Auth.auth().signIn(with: credential)
            let firebaseUser = result.user
            failed = false
            authenticated=true
            FirebaseManager.shared.currentID=firebaseUser.uid
            let displayName = firebaseUser.displayName ?? "John Doe"
            let profileImageURL = firebaseUser.photoURL?.absoluteString ?? ""
            print("display name is \(displayName).")
            FirebaseManager.shared.signedWithGoogle=true
            print("User \(firebaseUser.uid) signed in with email \(firebaseUser.email ?? "unknown")")
            return true
        }
        catch {
            print(error.localizedDescription)
            self.errorMessage = error.localizedDescription
            return false
        }
    }
    var body: some View {
        Rectangle()
            .background(Color(red: 1, green: 0.51, blue: 0.21))
            .foregroundColor(.clear)
            .overlay(
                VStack(){
                    LogoView()
                    
                    if(authenticated){
                        ContentView()
                    }
                    else{
                        VStack() {
                            Text("Welcome to Teenfully!")
                                .font(Font.custom("Inter", size: 25.60).weight(.bold))
                                .foregroundColor(.white)
                            Rectangle()
                                .frame(width: 368, height: 625)
                                .background(.white)
                                .foregroundColor(.clear)
                                .cornerRadius(23)
                                .overlay(
                                    VStack(spacing: 20){
                                        Text("Login to your Account")
                                            .font(Font.custom("Inter", size:26).weight(.bold))
                                            .foregroundColor(Color(red: 0.10, green: 0.10, blue: 0.10))
                                        Button(action: {sWithGoogle()}) {
                                            Image("GoogleLogo")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(height:34, alignment: .center)
                                        }
                                        Ellipse()
                                            .foregroundColor(.clear)
                                            .frame(width: 34, height: 34)
                                            .background(.white)
                                            .overlay(
                                                ZStack{
                                                    Ellipse()
                                                        .inset(by: 0.92)
                                                        .stroke(Color(red: 0.85, green: 0.85, blue: 0.85), lineWidth: 0.92)
                                                    Text("Or")
                                                        .font(Font.custom("Inter", size: 13.60).weight(.medium))
                                                        .foregroundColor(Color(red: 0.84, green: 0.83, blue: 0.85))
                                                }
                                            )
                                        TextField("Email", text: $email)
                                            .textFieldStyle(.roundedBorder)
                                            .padding(.horizontal, 10)
                                        
                                        SecureField("Password", text: $password)
                                            .textFieldStyle(.roundedBorder)
                                            .padding(.horizontal, 10)
                                        
                                        Rectangle()
                                            .foregroundColor(.clear)
                                            .frame(width: 271, height: 42)
                                            .background(Color(red: 1, green: 0.51, blue: 0.21))
                                            .cornerRadius(5)
                                            .overlay(
                                                Button(action: {login()}) {
                                                    Text("Log In")
                                                }
                                            )
                                        if(failed){
                                            Text(errorMessage)
                                                .foregroundColor(.red)
                                            NavigationLink{
                                                ResetPassword()
                                            } label:{
                                                Text("Forgot Password?")
                                                    .font(Font.custom("Inter", size: 12.60))
                                            }
                                        }
                                        NavigationLink {
                                            SignUpView()
                                        } label: {
                                            Text("Don’t have an account? Sign Up")
                                                .font(Font.custom("Inter", size: 12.60))
                                                .foregroundColor(.blue)
                                        }
                                        
                                    }
                                )
                        }
                        
                    }
                }
            )
    }
    
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}


