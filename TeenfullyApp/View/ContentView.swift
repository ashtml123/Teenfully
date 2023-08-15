//

import SwiftUI

struct ContentView: View {

    var body: some View {
        TabView {
            HomeScreenView()
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
            ProfileInterface(profilePicture:Image(systemName: "person.crop.circle") )
                .tabItem(){
                    Label("Profile",systemImage: "person.crop.circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
