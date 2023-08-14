import SwiftUI

struct dailyCheckinView: View {
    @State var question = ModelData().questionData[0]
    
    var body:some View {
        ZStack() {
            //var resp:Measure
            @State var isQuestionOne = true
            @State var isQuestionTwo = false
            @State var isQuestionThree = false
            
            Text("Daily Check In")
                .font(Font.custom("Epilogue", size: 36).weight(.medium))
                .lineSpacing(32)
                .foregroundColor(Color(red: 0.22, green: 0.11, blue: 0.20))
                .offset(x:-50,y:-300)
            
            Image("DailyCheckin")
                .scaledToFit()
                .offset(x:130,y:-270)
            
            //add data fields to record essential data
            
            if (isQuestionOne){
                Text(question.QuestionInfo)
                    .font(Font.custom("Rubik", size: 25).weight(.medium))
                    .foregroundColor(.black)
                    .offset(y:-100)
                
                Button{
                    question = ModelData().questionData[1]
                    isQuestionTwo = true
                    isQuestionOne = false
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
                .offset(x: 150, y: -30)
                
                Button{
                    question = ModelData().questionData[1]
                    isQuestionTwo = true
                    isQuestionOne = false
                } label: {
                    Rectangle() //yellow
                        .foregroundColor(.clear)
                        .frame(width: 126, height: 50)
                        .background(Color(red: 0.99, green: 0.76, blue: 0.44))
                        .cornerRadius(50)
                    Text("Maybe")
                        .font(.title2)
                        .offset(x:-100)
                }
                .offset(x: 40, y: -30)
                
                Button{
                    question = ModelData().questionData[1]
                    isQuestionTwo = true
                    isQuestionOne = false
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
                .offset(x: -110, y:-30)
            }
            
            if (isQuestionTwo){
                Text(question.QuestionInfo)
                    .font(Font.custom("Rubik", size: 25).weight(.medium))
                    .foregroundColor(.black)
                    .offset(y:-100)
                
                Button{
                    question = ModelData().questionData[2]
                    isQuestionThree = true
                    isQuestionTwo = false
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
                .offset(x: 150, y: -30)
                
                Button{
                    question = ModelData().questionData[2]
                    isQuestionThree = true
                    isQuestionTwo = false
                } label: {
                    Rectangle() //yellow
                        .foregroundColor(.clear)
                        .frame(width: 126, height: 50)
                        .background(Color(red: 0.99, green: 0.76, blue: 0.44))
                        .cornerRadius(50)
                    Text("Maybe")
                        .font(.title2)
                        .offset(x:-100)
                }
                .offset(x: 40, y: -30)
                
                Button{
                    question = ModelData().questionData[2]
                    isQuestionThree = true
                    isQuestionTwo = false
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
                .offset(x: -110, y:-30)
            }
            
            if (isQuestionThree){
                Text(question.QuestionInfo)
                    .font(Font.custom("Rubik", size: 25).weight(.medium))
                    .foregroundColor(.black)
                    .offset(y:-100)
                
                Button{
                    isQuestionThree = false
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
                .offset(x: 150, y: -30)
                
                Button{
                    isQuestionThree = false
                } label: {
                    Rectangle() //yellow
                        .foregroundColor(.clear)
                        .frame(width: 126, height: 50)
                        .background(Color(red: 0.99, green: 0.76, blue: 0.44))
                        .cornerRadius(50)
                    Text("Maybe")
                        .font(.title2)
                        .offset(x:-100)
                }
                .offset(x: 40, y: -30)
                
                Button{
                    isQuestionThree = false
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
                .offset(x: -110, y:-30)
            }
            
            if (isQuestionOne == false && isQuestionTwo==false && isQuestionThree == false) {
                Text("You have completed today's check-in! Good job!")
                    .font(Font.custom("Rubik", size: 25).weight(.medium))
                    .foregroundColor(.black)
                    .offset(y:-100)
                ZStack(alignment: .top) {
                    Color(red: 0.98, green: 0.98, blue: 0.98)
                        .ignoresSafeArea()
                    
                    VStack(spacing: 0) {
                        Text("Daily Check In")
                            .font(.title)
                            .padding(.top, 100)
                        TwoQuestion(question: ModelData().questionData[0])
                        ThreeQuestionHigher(question:ModelData().questionData[2])
                        TwoQuestion(question: ModelData().questionData[1])
                    }
                    .padding(.vertical, 40)
                    .padding(.horizontal, 30)
                    .background(Color.white)
                    .cornerRadius(40)
                }
            }
        }
    .frame(width: 375, height: 1000)
    .background(Color(red: 0.98, green: 0.98, blue: 0.98))
    .cornerRadius(40)
  }
}

struct dailyCheckinView_Previews: PreviewProvider {
    static var previews: some View {
        dailyCheckinView()
    }
}
