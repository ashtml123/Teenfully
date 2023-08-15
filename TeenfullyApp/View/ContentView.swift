//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var age = 0
    @State private var articleHolder: [Article]=[]
    @State private var profileImageURL: String = ""
    var body: some View {
        TabView {
            HomeScreenView(name: self.name, age: self.age, articleHolder: self.articleHolder)
                .tabItem(){
                    Label("Home", image: "HomeIcon")
                }

            MeditateView()
                .tabItem(){
                    Label("Meditate",image:"MeditationIcon")
                }
            ProfileInterface(profileImageURL:self.profileImageURL, name:self.name,age:self.age)
                .tabItem(){
                    Label("Profile",systemImage: "person.crop.circle")
                }

           
            
        }
        .onAppear {
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
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
