import SwiftUI
import Firebase
import FirebaseAuth
import GoogleDataTransport
import Foundation
import FirebaseCore
import FirebaseAuth
import GoogleSignIn
import GoogleSignInSwift

enum AuthenticationState {
    case unauthenticated
    case authenticating
    case authenticated
}
enum AuthenticationError: Error {
    case tokenError(message: String)
}


class AuthStatePersist{
    
}

struct SignUpView: View {
    @State var firstname: String = ""
    @State var lastname: String = ""
    @State var age: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var authenticated = false
    @State var authenticationState: AuthenticationState = .unauthenticated
    @State var failed = false
    @State var errorMessage: String = ""
    let db = FirebaseManager.shared.db
    
    @Environment(\.dismiss) var dismiss
    
    
    func signUpWithEmailPassword() async -> Bool {
        authenticationState = .authenticating
        do {
            let authResult = try await Auth.auth().createUser(withEmail: email, password: password)
            let user = authResult.user
            let uid = user.uid
            FirebaseManager.shared.saveUserProfile(uid: uid, username: firstname+" "+lastname, age: Int(age) ?? 0)
            authenticated = true
            FirebaseManager.shared.currentID=uid
            return true
        } catch {
            print(error)
            errorMessage = error.localizedDescription
        }
        
        authenticationState = .unauthenticated
        return false
    }
    
    
    private func sWithEmailPassword() -> Void{
        Task {
            if await signUpWithEmailPassword() == true {
                authenticated=true
                print("Got here; authenticated is \(authenticated)")
            }
        }
    }
    private func sWithGoogle() ->Void{
        Task {
            if await signUpWithGoogle() == true {
                //                dismiss()
            }
        }
    }
    func signUpWithGoogle() async -> Bool {
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
            
            print("success")
            print("ATTENTION!!")
            print(firebaseUser.displayName)
            authenticated=true
            FirebaseManager.shared.currentID=firebaseUser.uid
            FirebaseManager.shared.saveUserProfile(uid: firebaseUser.uid, username: firebaseUser.displayName ?? "John Doe", age: -1)
            print("User \(firebaseUser.uid) signed in with email \(firebaseUser.email ?? "unknown")")
            //TODO make it so that sign up through google saves their age as well.
            return true
        }
        catch {
            print(error.localizedDescription)
            self.errorMessage = error.localizedDescription
            return false
        }
    }
    var body: some View {
        if(authenticated){
            ContentView()
        }
        else{
            VStack() {
                Text("Welcome to Teenfully!")
                    .font(Font.custom("Inter", size: 25.60).weight(.bold))
                    .foregroundColor(.white)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 368, height: 625)
                    .background(.white)
                    .cornerRadius(23)
                    .overlay{
                        VStack(spacing:20) {
                            Text("Make an Account")
                                .font(Font.custom("Inter", size:21).weight(.bold))
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
                            TextField("First Name", text: $firstname)
                                .textFieldStyle(.roundedBorder)
                                .padding(.horizontal, 10)

                            TextField("Last Name", text: $lastname)
                                .textFieldStyle(.roundedBorder)
                                .padding(.horizontal, 10)

                            TextField("Email", text: $email)
                                .textFieldStyle(.roundedBorder)
                                .padding(.horizontal, 10)

                            TextField("Age", text: $age)
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
                                .overlay{
                                    Button(action: {sWithEmailPassword()}) {
                                        Text("Sign Up")
                                    }
                                }
                            NavigationLink {
                                SignInView()
                            } label: {
                                Text("Already have an account? Sign In")
                                    .font(Font.custom("Inter", size: 12.60))
                                    .foregroundColor(Color(red: 0.04, green: 0.04, blue: 0.04))
                            }
                            
                        }
                    }
                    .frame(width: 428, height: 926)
                    .background(Color(red: 1, green: 0.51, blue: 0.21))
            }
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}


