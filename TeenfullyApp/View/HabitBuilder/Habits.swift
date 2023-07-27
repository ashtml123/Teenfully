//

import SwiftUI

struct Habits: View {
    var habit: String
    var body: some View {
        
        
        ZStack{
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 300, height: 146)
                .background(Color(red: 1, green: 0.95, blue: 0.91))
                .cornerRadius(16)
            Text(habit)
              .font(Font.custom("Rubik", size: 40).weight(.medium))
              .lineSpacing(18)
              .foregroundColor(Color(red: 0.34, green: 0.22, blue: 0.15))
              .offset(x:-40,y:-30)
            Group{
                Rectangle()
                    .fill(Color(red: 0.33, green: 0.62, blue: 0.43))
                    .frame(width: 130, height: 46)
                    .cornerRadius(20)
                Text("Completed")
                    .font(Font.custom("Epilogue", size: 20).weight(.bold))
                    .lineSpacing(30)
                    .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
            }
            .offset(x:-80,y:30)
            
            Text("Delete")
              .font(Font.custom("Epilogue", size: 20).weight(.bold))
              .lineSpacing(30)
              .foregroundColor(Color(red: 1, green: 0.51, blue: 0.21))
              .offset(x:80,y:30)
        }
    }
}

struct Habits_Previews: PreviewProvider {
    static var previews: some View {
        Habits(habit: "Take a Walk")
    }
}
