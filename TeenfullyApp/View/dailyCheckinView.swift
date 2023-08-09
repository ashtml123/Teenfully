
import SwiftUI

struct dailyCheckinView: View {
    
  var body:some View {
    ZStack() {
        Text("Daily Check In")
          .font(Font.custom("Epilogue", size: 36).weight(.medium))
          .lineSpacing(32)
          .foregroundColor(Color(red: 0.22, green: 0.11, blue: 0.20))
          .offset(x:-50,y:-300)
        
        TwoQuestion(question: ModelData().questionData[0])
            .offset(y:-120)
        ThreeQuestion(question:ModelData().questionData[2])
            .offset(y:0)
        TwoQuestion(question: ModelData().questionData[1])
            .offset(y:150)
    }
    .frame(width: 375, height: 812)
    .background(Color(red: 0.98, green: 0.98, blue: 0.98))
    .cornerRadius(40)
  }
}

struct dailyCheckinView_Previews: PreviewProvider {
  static var previews: some View {
      dailyCheckinView()
  }
}
