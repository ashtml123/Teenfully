
import SwiftUI

struct dailyCheckinView: View {
    
  var body:some View {
    ZStack() {
        Text("Daily Check In")
          .font(Font.custom("Epilogue", size: 36).weight(.medium))
          .lineSpacing(32)
          .foregroundColor(Color(red: 0.22, green: 0.11, blue: 0.20))
          .offset(x:-50,y:-300)
        
        Image("DailyCheckin")
            .scaledToFit()
            .offset(x:130,y:-270)
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
