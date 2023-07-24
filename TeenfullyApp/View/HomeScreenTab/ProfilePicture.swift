//

import SwiftUI

struct ProfilePicture: View {
    var body: some View {
        Image("DavidProfile")
            .resizable()
            .scaledToFit()
            .frame(width: 70)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.orange, lineWidth: 3)
            }

        
    }
}

struct ProfilePicture_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePicture()
    }
}
