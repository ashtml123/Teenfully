
import SwiftUI

struct dailyCheckinView: View {
    
    var body:some View {
        ZStack(alignment: .top) {
            Color(red: 0.98, green: 0.98, blue: 0.98)
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                Text("Daily Check In")
                    .font(.title)
                    .padding(.top, 100)
                TwoQuestion(question: ModelData().questionData[0])
                ThreeQuestion(question:ModelData().questionData[2])
                TwoQuestion(question: ModelData().questionData[1])
            }
            .padding(.vertical, 40)
            .padding(.horizontal, 30)
            .background(Color.white)
            .cornerRadius(40)
        }
    }
}

struct dailyCheckinView_Previews: PreviewProvider {
    static var previews: some View {
        dailyCheckinView()
    }
}
