import SwiftUI

//Screen width.
public var screenWidth: CGFloat {
    return UIScreen.main.bounds.width
}

// Screen height.
public var screenHeight: CGFloat {
    return UIScreen.main.bounds.height
}


struct FeatureCardView<Content: View>: View {
    let title: String
    let description: String
    let imageName: String
    let linkText: String
    let backgroundColor: Color?
    let textColor: Color?
    let textButtonColor: Color?
    let destination: Content
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.system(size: 24, weight: .bold))
                .foregroundColor(textColor)
                .alignmentGuide(.firstTextBaseline, computeValue: {_ in 90})
            HStack(spacing: 0) {
                Text(description)
                    .font(.system(size: 14))
                    .multilineTextAlignment(.leading)
                    .foregroundColor(textColor)
                    .frame(maxWidth:screenWidth*0.45)
                    .padding(.bottom, 50)
                    .padding(.trailing, 10)
                Image(imageName)
                        .resizable()
                        .frame(width: 78, height: 70)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .frame(maxWidth: screenWidth*0.75, alignment: .leading)
        .padding()
        .cornerRadius(50)
        .background(backgroundColor.clipShape(RoundedRectangle(cornerRadius:20)))
        .overlay(
            NavigationLink(destination: destination) {
                Text(linkText)
                .font(.system(size: 14, weight: .bold))
                .padding(.leading, 15)
                .cornerRadius(10)
                .foregroundColor(textButtonColor)
            }
                .padding(.bottom, 13), alignment: .bottomLeading
            
        )
        
    }
    
}
struct HomeScreenView: View {
//    @State var dummy: String
    @State var name: String
    @State var age:Int
    @State var articleHolder: [Article]
    
    let cardSpacing = 12.0
    
    //TODO Profile picture
    //TODO make streak counter
    //TODO profile editing
    var body: some View {
        VStack {
                
                ScrollView() {
                    Text("Welcome Back, \(name)!")
                        .font(.system(size: 24, weight: .bold))
                        .multilineTextAlignment(.leading)
                        .padding()
                    
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
                    backgroundColor: Color(red: 254/255, green: 244/255, blue: 231/255),
                    textColor: Color(red: 86/255, green: 57/255, blue: 38/255),
                    textButtonColor: Color(red: 254/255, green: 129/255, blue: 54/255),
                    destination: DailyCheckinView()
                )
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.bottom, cardSpacing+0.0)

                
                FeatureCardView(
                    title: "Habit Builder",
                    description: "Relearn your relationship with your phone.",
                    imageName: "HabitBuilderInside",
                    linkText: "Continue",
                    backgroundColor: Color(red: 254/255, green: 129/255, blue: 54/255),
                    textColor: Color.white,
                    textButtonColor: Color.white,
                    destination: habitBuilderView()
                )
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.bottom, cardSpacing+0.0)
                
                FeatureCardView(
                    title: "Meditate",
                    description: "Experience peace always inherent to consciousness",
                    imageName: "MeditationIcon",
                    linkText: "Continue",
                    backgroundColor: Color(red: 83/255, green: 160/255, blue: 110/255),
                    textColor: Color.white,
                    textButtonColor: Color.white,
                    destination: MeditateView()
                )
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.bottom, cardSpacing+0.0)

                FeatureCardView(
                    title: "Library",
                    description: "Check out our articles!",
                    imageName: "Library",
                    linkText: "Explore",
                    backgroundColor: Color(red: 73/255, green: 73/255, blue: 200/255),
                    textColor: Color.white,
                    textButtonColor: Color.white,
                    destination: LibraryView(articleList: articleHolder)
                )
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.bottom, cardSpacing+0.0)

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
        .background(Color.white)
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView(name: "John", age: 1, articleHolder: [])
    }
}
