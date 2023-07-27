import SwiftUI

struct habitBuilderView: View {
  var body: some View {
      ZStack{
          Group{
              Rectangle()
                  .fill(Color(red:0.28515625,green:0.28515625,blue:0.78515625))
                  .frame(width:200,height:45)
                  .cornerRadius(30)
              ZStack{
                  Text("Daily Goals ")
                      .font(Font.custom("Epilogue", size: 26).weight(.medium))
                      .lineSpacing(32)
                      .foregroundColor(.white)
              }
          }
          .offset(x:-40,y:-300)
          ZStack{
              Habits(habit: "Take a walk")
          }
          .offset(y:-200)
          ZStack{
              Habits(habit: "Exercise")
          }
          .offset(y:-40)
        Group{
              Rectangle()
                  .fill(Color(red:0.28515625,green:0.28515625,blue:0.78515625))
                  .frame(width:200,height:45)
                  .cornerRadius(30)
              ZStack{
                  Text("Weekly Goals ")
                      .font(Font.custom("Epilogue", size: 26).weight(.medium))
                      .lineSpacing(32)
                      .foregroundColor(.white)
              }
          }
          .offset(x:-40,y:70)
          ZStack{
              Habits(habit: "Read a book")
          }
          .offset(y:180)
          ZStack{
              Image("HabitBuilderInside")
          }
          .offset(x:120,y:-350)
      }
  }
}

struct habitBuilderView_Previews: PreviewProvider {
  static var previews: some View {
      habitBuilderView()
  }
}
