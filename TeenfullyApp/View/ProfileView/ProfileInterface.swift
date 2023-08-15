import SwiftUI

struct ProfileInterface: View {
    var profilePicture: Image
    @State private var name = ""
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill(Color.white)
                    .frame(width: 150, height: 150)
                
                profilePicture
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 140, height: 140)
            }
            .padding(.top, 30)
            
            Text("Name:")
                .font(.title3)
                .foregroundColor(.gray)
                .padding(.top, 20)
            
            Text(name)
                .font(.title2)
                .fontWeight(.bold)
                .padding(.bottom, 10)
                .onAppear {
                    FirebaseManager.shared.fetchUserProfile { userProfile in
                        if let userProfile = userProfile {
                            DispatchQueue.main.async {
                                self.name = userProfile.username
                            }
                        } else {
                            print("User profile not found or error occurred.")
                        }
                    }
                }
        }
        .padding(.horizontal, 40)
    }
}

struct ProfileInterface_Previews: PreviewProvider {
    static var previews: some View {
        ProfileInterface(profilePicture: Image("DavidProfile"))
    }
}
