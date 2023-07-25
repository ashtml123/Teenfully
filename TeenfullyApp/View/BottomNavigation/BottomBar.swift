//

import SwiftUI

struct BottomBar: View {
    var body: some View {
            TabView {
                HomeScreenView()
                    .tabItem(){
                        Image("HomeIcon")
                    }
        }
            .frame(width: 375,height:20)
    }
}

struct BottomBar_Previews: PreviewProvider {
    static var previews: some View {
        BottomBar()
    }
}
