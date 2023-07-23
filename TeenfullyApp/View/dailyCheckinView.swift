
import SwiftUI

struct dailyCheckinView: View {
  var body: some View {
    ZStack() {
      Group {
        Text("Daily Check In")
          .font(Font.custom("Epilogue", size: 26).weight(.medium))
          .lineSpacing(32)
          .foregroundColor(Color(red: 0.22, green: 0.11, blue: 0.20))
          .offset(x: 367, y: -284)
        Text(" ")
          .font(Font.custom("Epilogue", size: 15).weight(.medium))
          .foregroundColor(.black)
          .offset(x: 14.50, y: -82)
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 126, height: 50)
          .background(Color(red: 0.99, green: 0.76, blue: 0.44))
          .cornerRadius(50)
          .offset(x: 1.50, y: 65)
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 91, height: 50)
          .background(Color(red: 0.29, green: 0.29, blue: 0.79))
          .cornerRadius(50)
          .offset(x: -128, y: 65)
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 91, height: 50)
          .background(Color(red: 0.33, green: 0.62, blue: 0.43))
          .cornerRadius(50)
          .offset(x: 135, y: 66)
      };Group {
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 91, height: 50)
          .background(Color(red: 0.29, green: 0.29, blue: 0.79))
          .cornerRadius(50)
          .offset(x: -128, y: 65)
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 91, height: 50)
          .background(Color(red: 0.29, green: 0.29, blue: 0.79))
          .cornerRadius(50)
          .offset(x: -128, y: 65)
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 91, height: 50)
          .background(Color(red: 0.33, green: 0.62, blue: 0.43))
          .cornerRadius(50)
          .offset(x: 131, y: 65)
        Text("Sometimes ")
          .font(Font.custom("Epilogue", size: 15).weight(.medium))
          .foregroundColor(.black)
          .offset(x: 7.50, y: 65)
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 126, height: 50)
          .background(Color(red: 0.99, green: 0.76, blue: 0.44))
          .cornerRadius(50)
          .offset(x: -3.50, y: -95)
        Text("Sometimes ")
          .font(Font.custom("Epilogue", size: 15).weight(.medium))
          .foregroundColor(.black)
          .offset(x: 2.50, y: -95)
        ZStack() {
          Text("Have I been getting quality sleep with regular bed times and getting up times?")
            .font(Font.custom("Epilogue", size: 20).weight(.medium))
            .foregroundColor(.black)
            .offset(x: -0.50, y: -200)
          Text("Have I been isolating myself from my friends or family?")
            .font(Font.custom("Epilogue", size: 20).weight(.medium))
            .foregroundColor(.black)
            .offset(x: 0.50, y: -43)
          Text("Have I had a difficult time concentrating recently?")
            .font(Font.custom("Epilogue", size: 20).weight(.medium))
            .foregroundColor(.black)
            .offset(x: 0.50, y: 114)
          Rectangle()
            .foregroundColor(.clear)
            .frame(width: 91, height: 50)
            .background(Color(red: 0.29, green: 0.29, blue: 0.79))
            .cornerRadius(50)
            .offset(x: -128.50, y: 27.50)
          Rectangle()
            .foregroundColor(.clear)
            .frame(width: 91, height: 50)
            .background(Color(red: 0.29, green: 0.29, blue: 0.79))
            .cornerRadius(50)
            .offset(x: -128.50, y: 172.50)
          Text("No")
            .font(Font.custom("Epilogue", size: 15).weight(.medium))
            .foregroundColor(.white)
            .offset(x: -89, y: 28.50)
          Text("No")
            .font(Font.custom("Epilogue", size: 15).weight(.medium))
            .foregroundColor(.white)
            .offset(x: -89, y: -131.50)
        }
        .frame(width: 376, height: 567)
        .offset(x: 0.50, y: 37.50)
        Text("No")
          .font(Font.custom("Epilogue", size: 15).weight(.medium))
          .foregroundColor(.white)
          .offset(x: -88.50, y: 211)
      };Group {
        Text("Yes")
          .font(Font.custom("Epilogue", size: 15).weight(.medium))
          .foregroundColor(.white)
          .offset(x: 168.50, y: 65)
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 91, height: 50)
          .background(Color(red: 0.33, green: 0.62, blue: 0.43))
          .cornerRadius(50)
          .offset(x: 131, y: -94)
        Text("Yes")
          .font(Font.custom("Epilogue", size: 15).weight(.medium))
          .foregroundColor(.white)
          .offset(x: 168.50, y: -94)
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 126, height: 50)
          .background(Color(red: 0.99, green: 0.76, blue: 0.44))
          .cornerRadius(50)
          .offset(x: 8.50, y: 211)
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 91, height: 50)
          .background(Color(red: 0.33, green: 0.62, blue: 0.43))
          .cornerRadius(50)
          .offset(x: 135, y: 211)
        Text("Yes")
          .font(Font.custom("Epilogue", size: 15).weight(.medium))
          .foregroundColor(.white)
          .offset(x: 172.50, y: 332)
        Text("Sometimes ")
          .font(Font.custom("Epilogue", size: 15).weight(.medium))
          .foregroundColor(.black)
          .offset(x: 14.50, y: 211)
        Text("Yes")
          .font(Font.custom("Epilogue", size: 15).weight(.medium))
          .foregroundColor(.white)
          .offset(x: 168.50, y: 211)
        ZStack() {
          ZStack() {
            ZStack() {
              Ellipse()
                .foregroundColor(.clear)
                .frame(width: 18, height: 18)
                .background(Color(red: 1, green: 0.51, blue: 0.21))
                .offset(x: 0, y: 0)
              
            }
            .frame(width: 18, height: 18)
            .offset(x: 154.50, y: -13)
    
              
              .offset(x: -146, y: 4.50)
          }
          .frame(width: 327, height: 44)
          .offset(x: 0, y: -37.50)
          ZStack() {

          }
          .frame(width: 51, height: 51)
          .offset(x: 151, y: -21)
          ZStack() {
            ZStack() {
            }
            .frame(width: 36.19, height: 41.69)
            .offset(x: -19.42, y: 12.66)
            ZStack() { }
            .frame(width: 39.64, height: 41.70)
            .offset(x: 4.85, y: 21.69)
            .rotationEffect(.degrees(60))
          }
          .frame(width: 81.94, height: 67)
          .offset(x: 84.47, y: 26)
          Text("Daily Check In")
            .font(Font.custom("Epilogue", size: 26).weight(.medium))
            .lineSpacing(32)
            .foregroundColor(Color(red: 0.22, green: 0.11, blue: 0.20))
            .offset(x: -46, y: 25.50)
        }
        .frame(width: 327, height: 119)
        .offset(x: 0, y: -316.50)
      };Group {
        ZStack() {
          Rectangle()
            .foregroundColor(.clear)
            .frame(width: 375, height: 85)
            .background(.white)
            .offset(x: 0, y: 0)
            .shadow(
              color: Color(red: 0, green: 0, blue: 0, opacity: 0.11), radius: 12, y: 4
            )
          ZStack() {
            ZStack() {
              Rectangle()
                .foregroundColor(.clear)
                .frame(width: 52, height: 52)
                .offset(x: 0, y: 0)
              ZStack() {
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 28, height: 28)
                  .background(
                    AsyncImage(url: URL(string: "https://via.placeholder.com/28x28"))
                  )
                  .offset(x: 0, y: 0)
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 28, height: 28)
                  .background(
                    AsyncImage(url: URL(string: "https://via.placeholder.com/28x28"))
                  )
                  .offset(x: 0, y: 0)
              }
              .frame(width: 28, height: 28)
              .offset(x: 0, y: 0)
            }
            .frame(width: 52, height: 52)
            .offset(x: -138, y: 0)
            ZStack() {
              Rectangle()
                .foregroundColor(.clear)
                .frame(width: 52, height: 52)
                .offset(x: 0, y: 0)
              ZStack() {

              }
              .frame(width: 42, height: 42)
              .offset(x: -0, y: -0)
            }
            .frame(width: 52, height: 52)
            .offset(x: -46, y: 0)
            ZStack() {
              Rectangle()
                .foregroundColor(.clear)
                .frame(width: 52, height: 52)
                .offset(x: 0, y: 0)
              ZStack() {
                ZStack() { }
                .frame(width: 26.67, height: 24.63)
                .offset(x: 0, y: 0.31)
              }
              .frame(width: 32, height: 32)
              .offset(x: 0, y: -0)
            }
            .frame(width: 52, height: 52)
            .offset(x: 46, y: 0)
            ZStack() {
              Rectangle()
                .foregroundColor(.clear)
                .frame(width: 52, height: 52)
                .offset(x: 0, y: 0)
              ZStack() { }
              .frame(width: 28, height: 22.62)
              .offset(x: -0, y: 0.31)
            }
            .frame(width: 52, height: 52)
            .offset(x: 138, y: 0)
          }
          .frame(width: 328, height: 52)
          .offset(x: 0.50, y: -5.50)
        }
        .frame(width: 375, height: 85)
        .offset(x: 0, y: 363.50)
      }
    }
    .frame(width: 375, height: 812)
    .background(Color(red: 0.98, green: 0.98, blue: 0.98))
    .cornerRadius(40);
  }
}

struct dailyCheckinView_Previews: PreviewProvider {
  static var previews: some View {
      dailyCheckinView()
  }
}
