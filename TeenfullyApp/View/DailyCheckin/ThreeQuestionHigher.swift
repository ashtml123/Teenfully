import SwiftUI

struct ThreeQuestionHigher: View {
    @Binding var result: Int
    @Binding var clicked: Bool
    var body: some View {
        VStack {            
                        
            HStack(spacing: 20) {
                Button(action: {
                    result = 0
                    clicked = true
                }) {
                    Text("Lower")
                        .frame(width: 91, height: 50)
                        .background(Color(red: 0.29, green: 0.29, blue: 0.79))
                        .foregroundColor(.white)
                        .cornerRadius(25)
                        .font(.system(size: 14, weight: .bold))
                        .padding(10)
                        .cornerRadius(10)
                }
                
                Button(action: {
                    result = 2
                    clicked = true
                }) {
                    Text("Higher")
                        .frame(width: 91, height: 50)
                        .background(Color(red: 0.33, green: 0.62, blue: 0.43))
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
                    Text("Same")
                        .frame(width: 126, height: 50)
                        .background(Color(red: 0.99, green: 0.76, blue: 0.44))
                        .foregroundColor(.white)
                        .cornerRadius(25)
                }
            }
        }
        .padding(30)
        .background(Color.white)
        .cornerRadius(40)

    }
}
