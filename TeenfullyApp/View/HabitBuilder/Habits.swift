//

import SwiftUI
struct Habits: View {
    var habit: String
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Rectangle()
                    .foregroundColor(Color(red: 1, green: 0.95, blue: 0.91))
                    .frame(width: 300, height: 146)
                    .cornerRadius(16)
                    .padding(.bottom, 30)
                    .overlay{
                        VStack{
                            Text(habit)
                                .font(Font.custom("Rubik", size: 40).weight(.medium))
                                .lineSpacing(18)
                                .foregroundColor(Color(red: 0.34, green: 0.22, blue: 0.15))
                                .padding(.bottom, 20)
                                .padding(.top, 10)
                            
                            HStack(spacing: 0) {
                                Rectangle()
                                    .fill(Color(red: 0.33, green: 0.62, blue: 0.43))
                                    .frame(width: 130, height: 46)
                                    .cornerRadius(20)
                                    .overlay{
                                        Text("Completed")
                                            .font(Font.custom("Epilogue", size: 20).weight(.bold))
                                            .foregroundColor(Color.white)
                                    }
                                Rectangle()
                                    .fill(Color(red: 1, green: 0.51, blue: 0.21))
                                    .frame(width: 130, height: 46)
                                    .cornerRadius(20)
                                    .overlay{
                                        Text("Delete")
                                            .font(Font.custom("Epilogue", size: 20).weight(.bold))
                                            .foregroundColor(Color.white)
                                    }
                            }
                            .padding(.bottom, 30)
                            
                        }
                        
                    }
            }
        }
        .background(Color.white)
        .ignoresSafeArea()
    }
}

struct Habits_Previews: PreviewProvider {
    static var previews: some View {
        Habits(habit: "Take a Walk")
    }
}
