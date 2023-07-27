//

import SwiftUI

struct MeditateBox: View {
    var timeDuration: Int
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 311, height: 142.17143)
                .background(Color(red: 1, green: 0.95, blue: 0.91))
                .cornerRadius(16)
            
            Text("\(timeDuration) Minutes")
              .font(
                Font.custom("Rubik", size: 40)
                  .weight(.medium)
              )
              .foregroundColor(Color(red: 0.34, green: 0.22, blue: 0.15))
              .frame(width: 255.13953, height: 53.31429, alignment: .topLeading)
              .offset(y:-20)
            
           
            Group{
                Rectangle()
                    .fill(Color(red: 0.33, green: 0.62, blue: 0.43))
                    .cornerRadius(10)
                    .frame(width: 99, height: 45)
                ZStack{
                    Text("Start")
                        .font(
                            Font.custom("Epilogue", size: 20)
                                .weight(.bold)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                        .frame(width: 99, height: 45, alignment: .center)
                }
            }
            .offset(x:-50,y:30)
        }
    }
}

struct MeditateBox_Previews: PreviewProvider {
    static var previews: some View {
        MeditateBox(timeDuration: 10)
    }
}
