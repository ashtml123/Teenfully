import SwiftUI

struct ProfileInterface: View {
    var profileImageURL: String
    @State var name:String
    @State var age:Int
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill(Color.white)
                    .frame(width: 150, height: 150)
                
                AsyncImage(url: URL(string: profileImageURL)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                } placeholder: {
                    // Placeholder image while loading
                    Image(systemName: "person.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                }
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
                                self.age = userProfile.age
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
        ProfileInterface(profileImageURL: "", name: "asdf", age:10)
    }
}
