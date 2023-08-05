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
            authenticated=true
            FirebaseManager.shared.currentID=firebaseUser.uid
            FirebaseManager.shared.saveUserProfile(uid: firebaseUser.uid, username: firebaseUser.displayName ?? "John Doe", age: -1)
            print("User \(firebaseUser.uid) signed in with email \(firebaseUser.email ?? "unknown")")
            //TODO fix google sign in so that display name is properly passed through.
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
                    Text("Make an Account")
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
                                .stroke(Color(red: 0.85, green: 0.85, blue: 0.85), lineWidth: 0.50)
                        )
                        .offset(x: -0.50, y: -145)
                    VStack{
                        TextField("First Name", text: $firstname)
                            .textFieldStyle(.roundedBorder)
                        TextField("Last Name", text: $lastname)
                            .textFieldStyle(.roundedBorder)
                        TextField("Email", text: $email)
                            .textFieldStyle(.roundedBorder)
                        TextField("Age", text: $age)
                            .textFieldStyle(.roundedBorder)
                        SecureField("Password", text: $password)
                            .textFieldStyle(.roundedBorder)
                    }
                    .offset(x:0,y:25)
                    .frame(width: 368, height: 200)
                }
                Group {
                    NavigationLink {
                        SignInView()
                    } label: {
                        Text("Already have an account? Sign In")
                            .font(Font.custom("Inter", size: 12.60))
                            .foregroundColor(Color(red: 0.04, green: 0.04, blue: 0.04))
                            .offset(x: -8, y: 200)
                    }
                    Button(action: {sWithGoogle()}) {
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
                    ZStack() {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 271, height: 42)
                            .background(Color(red: 1, green: 0.51, blue: 0.21))
                            .cornerRadius(5)
                        Button(action: {sWithEmailPassword()}) {
                            Text("Sign Up")
                        }
                    }
                    .frame(width: 271, height: 42)
                    .offset(x: -0.50, y: 160)
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
                        .offset(x: 0, y: -100)
                    Text("Or")
                        .font(Font.custom("Inter", size: 13.60).weight(.medium))
                        .foregroundColor(Color(red: 0.84, green: 0.83, blue: 0.85))
                        .offset(x: 0, y: -100)
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

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}


