//

import SwiftUI

struct AccountTab: View {
    var body: some View {
        HStack(){
            ProfilePicture(profilePicture: ModelData().userData[0].image)
            Spacer()
            StreakView(streakNum: ModelData().userData[0].streakNumber)
        }
    }
}

struct AccountTab_Previews: PreviewProvider {
    static var previews: some View {
        AccountTab()
    }
}
