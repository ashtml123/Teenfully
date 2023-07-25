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
        }
        .offset(y:20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
