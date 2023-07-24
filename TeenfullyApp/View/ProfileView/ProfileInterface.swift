//

import SwiftUI

struct ProfileInterface: View {
    var profilePicture: Image
    var name: String
    var body: some View {
        VStack {
            profilePicture
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width:150)
                .offset(y:-200)
            
            Button {
                
            } label:{
                Text("Change profile picture")
            }
            .offset(y:-190)
            
            Text("Name: \(name)")
                .font(.title3)
                .offset(x:-100,y:-100)
            Text("Birthdate:")
                .font(.title3)
                .offset(x:-100,y:-80)
            
        }
    }
}

struct ProfileInterface_Previews: PreviewProvider {
    static var previews: some View {
        ProfileInterface(profilePicture: Image("DavidProfile"),name: "David Zhang")
    }
}
