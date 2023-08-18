//

import SwiftUI

struct TwoQuestionYes: View {
    @Binding var result: Int
    @Binding var clicked: Bool
    var body: some View {
        VStack {            
            HStack(spacing: 20) {
                Button(action: {
                    result = 0
                    clicked = true
                }) {
                    Text("No")
                        .frame(width: 91, height: 50)
                        .background(Color(red: 0.29, green: 0.29, blue: 0.79))
                        .foregroundColor(.white)
                        .cornerRadius(25)
                        .font(.system(size: 14, weight: .bold))
                        .padding(10)
                        .cornerRadius(10)
                }
                Button(action: {
                    result = 1
                    clicked = true
                }) {
                    Text("Yes")
                        .frame(width: 91, height: 50)
                        .background(Color(red: 0.33, green: 0.62, blue: 0.43))
                        .foregroundColor(.white)
                        .cornerRadius(25)
                        .font(.system(size: 14, weight: .bold))
                        .padding(10)
                        .cornerRadius(10)
                }
            }
        }
        .padding(30)
        .background(Color.white)
        .cornerRadius(40)

    }
}
