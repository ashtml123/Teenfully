import SwiftUI

struct DisclaimerView: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack {
            Text("Teenfully is run by a team of teenagers. Teenfully content is not a substitute for professional medical or psychological advice.")
                .multilineTextAlignment(.center)
                .padding()
            
            Text("Always seek the guidance of a qualified adult professional for any concerns you have.")
                .multilineTextAlignment(.center)
                .padding()
            
            Button("OK") {
                isPresented = false
            }
            .padding()
        }
    }
}

struct ContentView: View {
    @State private var name = ""
    @State private var age = 0
    @State private var articleHolder: [Article] = []
    @State private var profileImageURL: String = ""
    @State private var isDisclaimerPresented = true // To control the presentation of the disclaimer
    
    var body: some View {
        TabView {
            HomeScreenView(name: self.name, age: self.age, articleHolder: self.articleHolder)
                .tabItem() {
                    Label("Home", image: "HomeIcon")
                }
            
            MeditateView()
                .tabItem() {
                    Label("Meditate", image: "MeditationIcon")
                }
            
            ProfileInterface(profileImageURL: self.profileImageURL, name: self.name, age: self.age)
                .tabItem() {
                    Label("Profile", systemImage: "person.crop.circle")
                }
        }
        .onAppear {
            // Fetch user profile and articles
            FirebaseManager.shared.fetchUserProfile { userProfile in
                if let userProfile = userProfile {
                    DispatchQueue.main.async {
                        self.name = userProfile.username
                        self.age = userProfile.age
                        self.profileImageURL=userProfile.profileImageURL
                        print("I HAVE FETCHED USER. name is \(self.name) and age is \(age)")
                    }
                } else {
                    print("User profile not found or error occurred.")
                }
            }
            FirebaseManager.shared.fetchArticlesFromFirebase{fetchedArticles,error in
                if(error != nil){
                    print("Error! \(String(describing: error))")
                }
                else{
                    print("I HAVE FETCHED ARTICLES")
                    articleHolder=fetchedArticles!
                }
            }
            // Present the disclaimer modal
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                isDisclaimerPresented = true
            }
        }
        .sheet(isPresented: $isDisclaimerPresented) {
            DisclaimerView(isPresented: $isDisclaimerPresented)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
