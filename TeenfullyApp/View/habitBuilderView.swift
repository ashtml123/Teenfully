import SwiftUI

struct habitBuilderView: View {
    var body: some View {
        VStack {
            Image("HabitBuilderInside")
                .padding(.top, 75)
                .padding(.bottom, 25)
            
            TabView {
                VStack {
                    Text("Daily Goals")
                        .font(Font.custom("Epilogue", size: 26).weight(.medium))
                        .padding(.vertical, 10)
                        .frame(maxWidth: .infinity)
                        .background(Color(red: 0.285, green: 0.285, blue: 0.785))
                        .foregroundColor(.white)
                        .cornerRadius(30)
                        .padding(.horizontal)
                    
                    Habits(habit: "Take a walk")
                        .padding(.top, 20)
                    
                    Habits(habit: "Exercise")
                        .padding(.top, 20)
                }
                .tabItem {
                    Text("Daily Goals")
                }
                
                VStack(spacing: 0) {
                    Text("Weekly Goals")
                        .font(Font.custom("Epilogue", size: 26).weight(.medium))
                        .padding(.vertical, 10)
                        .frame(maxWidth: .infinity)
                        .background(Color(red: 0.285, green: 0.285, blue: 0.785))
                        .foregroundColor(.white)
                        .cornerRadius(30)
                        .padding(.horizontal)
                        .padding(.top, 25)
                    
                    Habits(habit: "Read a book")
                        .padding(.top, 20)
                }
                .tabItem {
                    Text("Weekly Goals")
                }
            }
        }

    }
}
struct habitBuilderView_Previews: PreviewProvider {
    static var previews: some View {
        habitBuilderView()
    }
}
