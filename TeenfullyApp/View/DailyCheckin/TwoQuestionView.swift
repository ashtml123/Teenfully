//

import SwiftUI

struct TwoQuestion: View {
    var question: questions
    var body: some View {
        ZStack{
            Group {
                Text(question.QuestionInfo)
                
 
                Button{
                    print("Subscribe to David Zhang")
                } label: {
                    Rectangle() //Blue
                        .foregroundColor(.clear)
                        .frame(width: 91, height: 50)
                        .background(Color(red: 0.29, green: 0.29, blue: 0.79))
                        .cornerRadius(50)
                    Text("No")
                        .font(.title2)
                        .offset(x:-65)
                }
                .offset(x: -60, y: 65)
                
                Button{
                    print("Subscribe to David Zhang")
                } label: {
                    Rectangle() //Green
                        .foregroundColor(.clear)
                        .frame(width: 91, height: 50)
                        .background(Color(red: 0.33, green: 0.62, blue: 0.43))
                        .cornerRadius(50)
                    Text("Yes")
                        .font(.title2)
                        .offset(x:-68)
                }
                .offset(x: 120, y: 66)

                
                
            }
        }
    }
}

struct TwoQuestion_Previews: PreviewProvider {
    static var previews: some View {
        TwoQuestion(question: ModelData().questionData[0])
    }
}
