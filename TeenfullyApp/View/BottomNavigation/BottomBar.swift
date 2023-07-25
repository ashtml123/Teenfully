//

import SwiftUI

struct BottomBar: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 375, height: 85)
                .background(.white)
                .shadow(
                    color: Color(red: 0, green: 0, blue: 0, opacity: 0.11), radius: 12, y: 4
                )
            ZStack {
                Image("HomeIcon")
                    .offset(x:-90)
                Image("GroupIcon")
                    .offset(x:0)
            }
        }
    }
}

struct BottomBar_Previews: PreviewProvider {
    static var previews: some View {
        BottomBar()
    }
}
