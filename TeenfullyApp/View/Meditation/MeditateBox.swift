//

import SwiftUI

struct MeditateBox: View {
    var timeDuration: Int
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color(red: 1, green: 0.95, blue: 0.91))
                .frame(width: 311, height: 142.17143)
                .cornerRadius(16)
                .padding(.bottom, 20)
                .overlay{
                    
                    VStack{
                        Text("\(timeDuration) Minutes")
                            .font(
                                Font.custom("Rubik", size: 40)
                                    .weight(.medium)
                            )
                            .foregroundColor(Color(red: 0.34, green: 0.22, blue: 0.15))
                            .frame(width: 255.13953, height: 53.31429, alignment: .topLeading)
                        
                        Button(action: {
                            // Action for Start button
                        }) {
                            Text("Start")
                                .font(
                                    Font.custom("Epilogue", size: 20)
                                        .weight(.bold)
                                )
                                .foregroundColor(Color.white)
                                .frame(width: 99, height: 45)
                                .background(Color(red: 0.33, green: 0.62, blue: 0.43))
                                .cornerRadius(10)
                        }
                    }}
        }
        .background(Color.white)
        .ignoresSafeArea()
        
    }
}

struct MeditateBox_Previews: PreviewProvider {
    static var previews: some View {
        MeditateBox(timeDuration: 10)
    }
}
