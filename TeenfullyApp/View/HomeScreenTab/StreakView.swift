//

import SwiftUI

struct StreakView: View {
    var streakNum = 10
    
    var body: some View {
        ZStack {
            Image("Flame")
                .resizable()
                .scaledToFit()
                .frame(width:70)
            ZStack() {
                Rectangle()
                    .foregroundColor(.orange)
                    .frame(width:20,height:20)
                    .offset(x:10,y:-10)
                ZStack() {
                    Text("\(streakNum)")
                        .foregroundColor(.white)
                        .offset(x:10,y:-10)
                }
            }
        }
    }
}

struct StreakView_Previews: PreviewProvider {
    static var previews: some View {
        StreakView()
    }
}
