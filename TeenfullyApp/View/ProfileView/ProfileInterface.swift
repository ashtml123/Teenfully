import SwiftUI

struct ProfileInterface: View {
    @State var profileImageURL: String
    @State var name: String
    @State var age: Int
    @State var isEditingName = false
    @State var isEditingAge = false
    
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
            
            if isEditingName {
                TextField("Enter name", text: $name)
                    .font(.title2)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.bottom, 10)
            } else {
                Text(name)
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.bottom, 10)
            }
            
            Button(action: {
                isEditingName.toggle()
            }, label: {
                Text(isEditingName ? "Done" : "Edit Name")
                    .font(.headline)
                    .padding(.bottom, 10)
            })
            
            Text("Age:")
                .font(.title3)
                .foregroundColor(.gray)
                .padding(.top, 20)
            
            if isEditingAge {
                TextField("Enter age", value: $age, formatter: NumberFormatter())
                    .font(.title2)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.bottom, 10)
            } else {
                Text(String(age))
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.bottom, 10)
            }
            
            Button(action: {
                isEditingAge.toggle()
                FirebaseManager.shared.updateUserProfile(newUsername: name,newAge: age,newProfileImageURL: profileImageURL)
            }, label: {
                Text(isEditingAge ? "Done" : "Edit Age")
                    .font(.headline)
                    .padding(.bottom, 10)
            })
        }
        .padding(.horizontal, 40)
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
}

struct ProfileInterface_Previews: PreviewProvider {
    static var previews: some View {
        ProfileInterface(profileImageURL: "", name: "asdf", age:10)
    }
}
