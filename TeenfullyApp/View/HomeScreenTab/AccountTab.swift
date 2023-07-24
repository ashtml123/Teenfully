//

import SwiftUI

struct AccountTab: View {
    var body: some View {
        HStack(){
            ProfilePicture(profilePicture: ModelData().userData[0].image)
            Spacer()
            StreakView()
        }
    }
}

struct AccountTab_Previews: PreviewProvider {
    static var previews: some View {
        AccountTab()
    }
}
