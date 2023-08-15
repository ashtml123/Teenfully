//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var age = 0
    @State private var articleHolder: [Article]=[]
    @State private var profileImageURL: String = ""
    var body: some View {
        TabView {
            HomeScreenView(name: name, age: age, articleHolder: articleHolder)
            .tabItem(){
                    Label("Home", image: "HomeIcon")
                }
//            Text("Some Stuff")
//                .tabItem(){
//                    Image("GroupIcon")
//                }
//            Text("Some more stuff")
//                .tabItem(){
//                    Image("Medals")
//                }
//            Text("Some more more stuff")
//                .tabItem(){
//                    Image("FeedBack")
//                }
            MeditateView()
                .tabItem(){
                    Label("Meditate",image:"MeditationIcon")
                }
            ProfileInterface(profileImageURL: self.profileImageURL,name: self.name,age:self.age)
                .tabItem(){
                    Label("Profile",systemImage: "person.crop.circle")
                }
        }
        .onAppear {
            FirebaseManager.shared.fetchUserProfile { userProfile in
                if let userProfile = userProfile {
                    DispatchQueue.main.async {
                        print("I HAVE FETCHED USER")
                        self.name = userProfile.username
                        self.age = userProfile.age
                        self.profileImageURL=userProfile.profileImageURL
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
