import SwiftUI

struct ThreeQuestion: View {
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
                .offset(x: -110, y: 65)
                
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
                .offset(x: 150, y: 66)
                 
                Button{
                    print("Subscribe to David Zhang")
                } label: {
                Rectangle() //Yellow
                    .foregroundColor(.clear)
                    .frame(width: 126, height: 50)
                    .background(Color(red: 0.99, green: 0.76, blue: 0.44))
                    .cornerRadius(50)
                    Text("Maybe")
                        .font(.title2)
                        .offset(x:-100)
                }
                     .offset(x: 40, y: 65)
             }
        }
    }
}

struct ThreeQuestion_Previews: PreviewProvider {
    static var previews: some View {
        ThreeQuestion(question: ModelData().questionData[2])
    }
}
