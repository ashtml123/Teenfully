import SwiftUI

struct TeamMember: Identifiable {
    var id = UUID()
    var name: String
    var description: String
    var imageName: String
}

struct AboutUsPage: View {
    var teamMembers: [TeamMember] = [
        TeamMember(name: "John Doe", description: "Lead Developer", imageName: "Fire"),
        TeamMember(name: "Jane Smith", description: "UI/UX Designer", imageName: "Feedback"),
        // Add more team members here
    ]
    
    var body: some View {
        NavigationView {
            List(teamMembers) { member in
                NavigationLink(destination: TeamMemberDetail(member: member)) {
                    HStack {
                        Image(member.imageName)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                        VStack(alignment: .leading) {
                            Text(member.name)
                                .font(.headline)
                            Text(member.description)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                }
            }
            .navigationBarTitle("About Us")
        }
    }
}

struct TeamMemberDetail: View {
    var member: TeamMember
    
    var body: some View {
        VStack {
            Image(member.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 150, height: 150)
                .padding()
            
            Text(member.name)
                .font(.title)
            
            Text(member.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
                .padding()
            
            Spacer()
        }
        .navigationBarTitle(member.name)
    }
}

