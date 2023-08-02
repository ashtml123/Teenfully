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
struct SignInView: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var authenticated = false
    @State var failed = false
    @State var errorMessage: String = ""
    @Environment(\.dismiss) var dismiss
    func getHere(){
        print("Got here")
    }
    func login() {//TODO: Fix the failure to login; right now, when we log in with invalid credentials, it does nothing, but it should give an error.
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if error != nil {
                failed = true
                print(error?.localizedDescription ?? "")
            } else {
                failed = false
                print("success")
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
            print("success")
            authenticated=true            
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
        if(authenticated){
            ContentView()
        }
        else{
            ZStack() {
                Group {
                    Text("Welcome to Teenfully!")
                        .font(Font.custom("Inter", size: 25.60).weight(.bold))
                        .foregroundColor(.white)
                        .offset(x: -2.50, y: -338.50)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 368, height: 625)
                        .background(.white)
                        .cornerRadius(23)
                        .offset(x: 0, y: 25.50)
                    Text("Login to your Account")
                        .font(Font.custom("Inter", size:21).weight(.bold))
                        .foregroundColor(Color(red: 0.10, green: 0.10, blue: 0.10))
                        .offset(x: -41, y: -235.50)
                    Text("Through Apple or Google")
                        .font(Font.custom("Inter", size:14).weight(.bold))
                        .offset(x:-35,y:-200)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 271, height: 42)
                        .cornerRadius(5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .inset(by: 0.50)
                                .stroke(Color(red: 0.61, green: 0.61, blue: 0.61), lineWidth: 0.50)
                        )
                        .offset(x: -0.50, y: -5)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 271, height: 42)
                        .cornerRadius(5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .inset(by: 0.50)
                                .stroke(Color(red: 0.85, green: 0.85, blue: 0.85), lineWidth: 0.50)
                        )
                        .offset(x: -0.50, y: -145)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 271, height: 42)
                        .cornerRadius(5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .inset(by: 0.50)
                                .stroke(Color(red: 0.85, green: 0.85, blue: 0.85), lineWidth: 0.50)
                        )
                        .offset(x: -0.50, y: 48)
                    TextField("Email", text: $email)
                        .offset(x:100,y:2)
                    
                    SecureField("Password", text: $password)
                        .offset(x:100,y:50)
                };Group {
                    Text("Don’t have an account? Sign Up")
                        .font(Font.custom("Inter", size: 12.60))
                        .foregroundColor(Color(red: 0.04, green: 0.04, blue: 0.04))
                        .offset(x: -8, y: 163.50)
                    
//                    Button(action:{getHere()}){
//                        Text("Google")
//                            .font(Font.custom("Inter", size: 13.60).weight(.medium))
//                            .foregroundColor(Color(red: 0.04, green: 0.04, blue: 0.04))
//                            .offset(x: -63.50, y: -144)
//                            .background(alignment:.leading){
//                                Image("GoogleLogo")
//                                    .resizable()
//                                    .scaledToFit()
//                                    .frame(height:25, alignment: .center)
//                                    .offset(x:-100,y:-144)
//                            }
//
//                    }
                    Button(action: {sWithGoogle()}) {
                        Text("Google")
                        Image("GoogleLogo")
                            .resizable()
                            .scaledToFit()
                            .frame(height:25, alignment: .center)
                    }
                    .offset(x: -63.50, y: -144)

                        Image("AppleLogo")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 25,alignment: .center)
                            .offset(x: 30,y: -145)
                        VStack() {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 271, height: 42)
                                .background(Color(red: 1, green: 0.51, blue: 0.21))
                                .cornerRadius(5)
                                .offset(x: 0, y: 0)
                            Button(action: {login()}) {
                                Text("Log In")
                                Text("Test")
                            }
                            
                        }
                        .frame(width: 271, height: 42)
                        .offset(x: -0.50, y: 122)
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 271, height: 0)
                            .overlay(
                                Rectangle()
                                    .stroke(Color(red: 0.85, green: 0.85, blue: 0.85), lineWidth: 1)
                            )
                            .offset(x: -0.50, y: -72.50)
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 40, height: 0)
                            .overlay(
                                Rectangle()
                                    .stroke(Color(red: 0.85, green: 0.85, blue: 0.85), lineWidth: 0.50)
                            )
                            .offset(x: 20, y: -125)
                            .rotationEffect(.degrees(90))
                        Ellipse()
                            .foregroundColor(.clear)
                            .frame(width: 34, height: 34)
                            .background(.white)
                            .overlay(
                                Ellipse()
                                    .inset(by: 0.92)
                                    .stroke(Color(red: 0.85, green: 0.85, blue: 0.85), lineWidth: 0.92)
                            )
                            .offset(x: 0, y: -75)
                        Text("Or")
                            .font(Font.custom("Inter", size: 13.60).weight(.medium))
                            .foregroundColor(Color(red: 0.84, green: 0.83, blue: 0.85))
                            .offset(x: 0, y: -75)
                    };Group {
                        ZStack() { }
                            .frame(width: 18, height: 18)
                            .offset(x: -106, y: -145)
                    }
                }
                .frame(width: 428, height: 926)
                .background(Color(red: 1, green: 0.51, blue: 0.21));
            }
            
        }
    }
    
    struct SignInView_Previews: PreviewProvider {
        static var previews: some View {
            SignInView()
        }
    }
    

