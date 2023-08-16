import SwiftUI

struct FeatureCardView<Content: View>: View {
    let title: String
    let description: String
    let imageName: String
    let linkText: String
    let destination: Content
    
    var body: some View {
        HStack(spacing: 20) {
            Image(imageName)
                .resizable()
                .frame(width: 90, height: 90)
            VStack(alignment: .leading, spacing: 10) {
                Text(title)
                    .font(.system(size: 20, weight: .bold))
                
                Text(description)
                    .font(.system(size: 14))
                    .opacity(0.8)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .cornerRadius(20)
        .overlay(
            NavigationLink(destination: destination) {
                Text(linkText)
                    .font(.system(size: 14, weight: .bold))
                    .padding(10)
                    .cornerRadius(10)
            }
                .padding(.top, 8), alignment: .bottomTrailing
        )
    }
}
struct HomeScreenView: View {
    //    @State var dummy: String
    @State var name: String
    @State var age:Int
    @State var articleHolder: [Article]
    
    //TODO Profile picture
    //TODO make streak counter
    //TODO profile editing
    var body: some View {
        VStack() {
            Text("Welcome Back, \(name)!")
                .font(.system(size: 24, weight: .bold))
                .multilineTextAlignment(.center)
                .padding(.top,10)
                .onAppear{
                    FirebaseManager.shared.fetchUserProfile { userProfile in
                        if let userProfile = userProfile {
                            DispatchQueue.main.async {
                                self.name = userProfile.username
                                self.age = userProfile.age
                                print("I HAVE FETCHED USER. name is \(self.name) and age is \(age)")
                            }
                        } else {
                            print("User profile not found or error occurred.")
                        }
                    }
                }
            
            FeatureCardView(
                title: "Your Daily Check-In",
                description: "Let’s see how you are feeling today!",
                imageName: "DailyCheckin",
                linkText: "Start Now",
                destination: DailyCheckinView()
            )
            .frame(maxWidth: .infinity, alignment: .leading)
            
            
            FeatureCardView(
                title: "Habit Builder",
                description: "Relearn your relationship with your phone.",
                imageName: "HabitBuilderInside",
                linkText: "Continue",
                destination: habitBuilderView()
            )
            .frame(maxWidth: .infinity, alignment: .leading)
            
            FeatureCardView(
                title: "Library",
                description: "Check out our articles!",
                imageName: "Library",
                linkText: "Explore",
                destination: LibraryView(articleList: articleHolder)
            )
            .frame(maxWidth: .infinity, alignment: .leading)
            .onAppear{ FirebaseManager.shared.fetchArticlesFromFirebase{fetchedArticles,error in
                if(error != nil){
                    print("Error! \(String(describing: error))")
                }
                else{
                    print("I HAVE FETCHED ARTICLES")
                    articleHolder=fetchedArticles!
                }
            }}
        }
        .cornerRadius(20)
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView(name: "John", age: 1, articleHolder: [])
    }
}
