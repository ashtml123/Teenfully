//

import SwiftUI

struct AccountTab: View {
    var body: some View {
        HStack(){
            ProfilePicture()
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
