//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            HomeScreenView()
            .tabItem(){
                    Image("HomeIcon")
                }
            Text("Some Stuff")
                .tabItem(){
                    Image("GroupIcon")
                }
            Text("Some more stuff")
                .tabItem(){
                    Image("Medals")
                }
            Text("Some more more stuff")
                .tabItem(){
                    Image("FeedBack")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
