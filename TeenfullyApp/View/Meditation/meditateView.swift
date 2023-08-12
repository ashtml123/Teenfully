import SwiftUI

struct MeditateView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Text("Meditate")
                    .font(
                        Font.custom("Epilogue", size: 40)
                            .weight(.medium)
                    )
                    .foregroundColor(Color(red: 0.22, green: 0.11, blue: 0.2))
                    .padding(.top, 20)
                
                MeditateBox(timeDuration: 10, audioFileName: "Rick Roll Sound Effect")
                    .padding(.top, 20)
                
                MeditateBox(timeDuration: 5, audioFileName: "Rick Roll Sound Effect")
                    .padding(.top, 20)
            }
        }
        .background(Color.white)
        .ignoresSafeArea()
    }
}

struct MeditateView_Previews: PreviewProvider {
    static var previews: some View {
        MeditateView()
    }
}
