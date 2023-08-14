import SwiftUI

struct ThreeQuestionAgree: View {
    var question: questions
    var body: some View {
        VStack {
            Text(question.QuestionInfo)
                .font(.system(size: 16, weight: .bold))
                .padding(10)
                .cornerRadius(10)
                .multilineTextAlignment(.leading)
            
            HStack(spacing: 20) {
                Button(action: {
                    print("No")
                }) {
                    Text("Disagree")
                        .frame(width: 91, height: 50)
                        .background(Color(red: 0.29, green: 0.29, blue: 0.79))
                        .foregroundColor(.white)
                        .cornerRadius(25)
                        .font(.system(size: 14, weight: .bold))
                        .padding(10)
                        .cornerRadius(10)
                }
                
                Button(action: {
                    print("Yes")
                }) {
                    Text("Agree")
                        .frame(width: 91, height: 50)
                        .background(Color(red: 0.33, green: 0.62, blue: 0.43))
                        .foregroundColor(.white)
                        .cornerRadius(25)
                        .font(.system(size: 14, weight: .bold))
                        .padding(10)
                        .cornerRadius(10)
                }
                
                Button(action: {
                    print("Maybe")
                }) {
                    Text("Sometimes")
                        .font(.title2)
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

struct ThreeQuestionAgree_Previews: PreviewProvider {
    static var previews: some View {
        ThreeQuestionAgree(question: ModelData().questionData[2])
    }
}
