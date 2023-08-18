import SwiftUI

func generateUniqueIntegers(count: Int, in range: ClosedRange<Int>) -> [Int] {
    guard count <= range.count else {
        fatalError("Requested number of unique integers exceeds the size of the range.")
    }

    var uniqueNumbers = Set<Int>()

    while uniqueNumbers.count < count {
        let randomInt = Int.random(in: range)
        uniqueNumbers.insert(randomInt)
    }

    return Array(uniqueNumbers)
}

//let result = generateUniqueIntegers(count: 3, in: 1...10)
//print(result)  // Sample Output: [8, 2, 5]


struct DailyCheckinView: View {
    var body:some View {
        ZStack() {
            //var resp:Measure
            @State var isQuestionOne = true
            @State var isQuestionTwo = false
            @State var isQuestionThree = false
            
            let upper = ModelData().questionData.count
            let list = generateUniqueIntegers(count: 3,in:0...upper-1)//generates a list of random questions
            
            Text("Daily Check In")
                .font(Font.custom("Epilogue", size: 36).weight(.medium))
                .lineSpacing(32)
                .foregroundColor(Color(red: 0.22, green: 0.11, blue: 0.20))
                .offset(x:-50,y:-300)
            
            Image("DailyCheckin")
                .scaledToFit()
                .offset(x:130,y:-270)
            
            if (isQuestionOne){
                let question = ModelData().questionData[list[0]]
                let type = question.Qtype
            
                @State var result: Int = -5000
                @State var clicked: Bool = false
                
                
                Text(question.QuestionInfo)
                    .font(Font.custom("Rubik", size: 22).weight(.medium))
                    .foregroundColor(.black)
                    .offset(y:-100)
                
                    if (type == "Rate"){
                        RatingView(result:$result,clicked:$clicked,lower:1,upper: 10)
                    }
                    else if (type == "ThreeAgree"){
                        ThreeQuestionAgree(result: $result, clicked: $clicked)
                    }
                    else if (type == "ThreeHigher"){
                        ThreeQuestionHigher(result: $result, clicked: $clicked)
                    }
                    else if (type == "TwoYes"){
                        TwoQuestionYes(result: $result,clicked: $clicked)
                    }
                    else if (type == "RateSleep"){
                        RatingView(result:$result,clicked:$clicked,lower:3,upper: 12)
                    }
//
//                if clicked {
//                   isQuestionOne = false
//                    isQuestionTwo = true
//                } else {
//                   EmptyView()
//                }
//                    
                    
                
           }
            
//            if (isQuestionTwo){
//                Text(question.QuestionInfo)
//                    .font(Font.custom("Rubik", size: 25).weight(.medium))
//                    .foregroundColor(.black)
//                    .offset(y:-100)
//
//                Button{
//                    question = ModelData().questionData[2]
//                    isQuestionThree = true
//                    isQuestionTwo = false
//                } label: {
//                    Rectangle() //Green
//                        .foregroundColor(.clear)
//                        .frame(width: 91, height: 50)
//                        .background(Color(red: 0.33, green: 0.62, blue: 0.43))
//                        .cornerRadius(50)
//                    Text("Yes")
//                        .font(.title2)
//                        .offset(x:-68)
//                }
//                .offset(x: 150, y: -30)
//
//                Button{
//                    question = ModelData().questionData[2]
//                    isQuestionThree = true
//                    isQuestionTwo = false
//                } label: {
//                    Rectangle() //yellow
//                        .foregroundColor(.clear)
//                        .frame(width: 126, height: 50)
//                        .background(Color(red: 0.99, green: 0.76, blue: 0.44))
//                        .cornerRadius(50)
//                    Text("Maybe")
//                        .font(.title2)
//                        .offset(x:-100)
//                }
//                .offset(x: 40, y: -30)
//
//                Button{
//                    question = ModelData().questionData[2]
//                    isQuestionThree = true
//                    isQuestionTwo = false
//                } label: {
//                    Rectangle() //Blue
//                        .foregroundColor(.clear)
//                        .frame(width: 91, height: 50)
//                        .background(Color(red: 0.29, green: 0.29, blue: 0.79))
//                        .cornerRadius(50)
//                    Text("No")
//                        .font(.title2)
//                        .offset(x:-65)
//                }
//                .offset(x: -110, y:-30)
//            }
//
//            if (isQuestionThree){
//                Text(question.QuestionInfo)
//                    .font(Font.custom("Rubik", size: 25).weight(.medium))
//                    .foregroundColor(.black)
//                    .offset(y:-100)
//
//                Button{
//                    isQuestionThree = false
//                } label: {
//                    Rectangle() //Green
//                        .foregroundColor(.clear)
//                        .frame(width: 91, height: 50)
//                        .background(Color(red: 0.33, green: 0.62, blue: 0.43))
//                        .cornerRadius(50)
//                    Text("Yes")
//                        .font(.title2)
//                        .offset(x:-68)
//                }
//                .offset(x: 150, y: -30)
//
//                Button{
//                    isQuestionThree = false
//                } label: {
//                    Rectangle() //yellow
//                        .foregroundColor(.clear)
//                        .frame(width: 126, height: 50)
//                        .background(Color(red: 0.99, green: 0.76, blue: 0.44))
//                        .cornerRadius(50)
//                    Text("Maybe")
//                        .font(.title2)
//                        .offset(x:-100)
//                }
//                .offset(x: 40, y: -30)
//
//                Button{
//                    isQuestionThree = false
//                } label: {
//                    Rectangle() //Blue
//                        .foregroundColor(.clear)
//                        .frame(width: 91, height: 50)
//                        .background(Color(red: 0.29, green: 0.29, blue: 0.79))
//                        .cornerRadius(50)
//                    Text("No")
//                        .font(.title2)
//                        .offset(x:-65)
//                }
//                .offset(x: -110, y:-30)
//            }
            
            if (isQuestionOne == false && isQuestionTwo==false && isQuestionThree == false) {
                Text("You have completed today's check-in! Good job!")
                    .font(Font.custom("Rubik", size: 25).weight(.medium))
                    .foregroundColor(.black)
                    .offset(y:-100)
                ZStack(alignment: .top) {
                    Color(red: 0.98, green: 0.98, blue: 0.98)
                        .ignoresSafeArea()
                    

                }
            }
        }
    .frame(width: 375, height: 1000)
    .background(Color(red: 0.98, green: 0.98, blue: 0.98))
    .cornerRadius(40)
  }
}

struct DailyCheckinView_Previews: PreviewProvider {
    static var previews: some View {
        DailyCheckinView()
    }
}
