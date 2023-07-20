import SwiftUI

struct meditateView: View {
  var body: some View {
    ZStack() {
      Text("Meditate ")
        .font(Font.custom("Epilogue", size: 26).weight(.medium))
        .lineSpacing(32)
        .foregroundColor(Color(red: 0.22, green: 0.11, blue: 0.20))
        .offset(x: -45, y: -289)
      ZStack() {
        ZStack() {
          Ellipse()
            .foregroundColor(.clear)
            .frame(width: 18, height: 18)
            .background(Color(red: 1, green: 0.51, blue: 0.21))
            .offset(x: 0, y: 0)
          Text("3")
            .font(Font.custom("Epilogue", size: 12).weight(.medium))
            .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
            .offset(x: 0.43, y: 1.29)
        }
        .frame(width: 18, height: 18)
        .offset(x: 154.50, y: -13)
        Ellipse()
          .foregroundColor(.clear)
          .frame(width: 35, height: 35)
          .background(
            AsyncImage(url: URL(string: "https://via.placeholder.com/35x35"))
          )
          .overlay(
            Ellipse()
              .inset(by: -2)
              .stroke(
                Color(red: 0.94, green: 0.62, blue: 0.33).opacity(0.47), lineWidth: 2
              )
          )
          .offset(x: -146, y: 4.50)
      }
      .frame(width: 327, height: 44)
      .offset(x: 1, y: -347)
      ZStack() {

      }
      .frame(width: 51, height: 51)
      .offset(x: 152, y: -330.50)
      VStack(spacing: 246) {
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 295, height: 0)
          .overlay(
            Rectangle()
              .stroke(
                Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0.30), lineWidth: 0.50
              )
          )
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
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 52, height: 52)
              .offset(x: 46, y: 0)
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 52, height: 52)
              .offset(x: 138, y: 0)
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
          }
          .frame(width: 328, height: 52)
          .offset(x: 0.50, y: -5.50)
        }
        .frame(width: 375, height: 85)
      }
      .padding(EdgeInsets(top: 302, leading: 0, bottom: 52, trailing: 0))
      .frame(height: 685)
      .offset(x: 0.50, y: 118.50)
      ZStack() {
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 280, height: 128)
          .background(Color(red: 1, green: 0.95, blue: 0.91))
          .cornerRadius(16)
          .offset(x: 0, y: -92.50)
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 280, height: 128)
          .background(Color(red: 1, green: 0.95, blue: 0.91))
          .cornerRadius(16)
          .offset(x: 0, y: -92.50)
        ZStack() {
          Rectangle()
            .foregroundColor(.clear)
            .frame(width: 72, height: 40)
            .background(Color(red: 0.33, green: 0.62, blue: 0.43))
            .cornerRadius(9)
            .offset(x: 0, y: -13)
          Text("Start\n")
            .font(Font.custom("Epilogue", size: 14).weight(.bold))
            .lineSpacing(30)
            .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
            .offset(x: -1, y: 3)
        }
        .frame(width: 72, height: 66)
        .offset(x: -63, y: -47.50)
        Text("10 Minutes")
          .font(Font.custom("Rubik", size: 40).weight(.medium))
          .lineSpacing(18)
          .foregroundColor(Color(red: 0.34, green: 0.22, blue: 0.15))
          .offset(x: -4.15, y: -104.50)
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 280, height: 128)
          .background(Color(red: 1, green: 0.95, blue: 0.91))
          .cornerRadius(16)
          .offset(x: 0, y: 78.50)
        ZStack() {
          Rectangle()
            .foregroundColor(.clear)
            .frame(width: 72, height: 40)
            .background(Color(red: 0.33, green: 0.62, blue: 0.43))
            .cornerRadius(9)
            .offset(x: 0, y: -13)
          Text("Start\n")
            .font(Font.custom("Epilogue", size: 14).weight(.bold))
            .lineSpacing(30)
            .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
            .offset(x: -1, y: 3)
        }
        .frame(width: 72, height: 66)
        .offset(x: -63, y: 123.50)
        Text("5 Minutes")
          .font(Font.custom("Rubik", size: 40).weight(.medium))
          .lineSpacing(18)
          .foregroundColor(Color(red: 0.34, green: 0.22, blue: 0.15))
          .offset(x: -4.15, y: 66.50)
      }
      .frame(width: 280, height: 313)
      .offset(x: -19.50, y: -85.50)
      ZStack() {
        ZStack() { }
        .frame(width: 80, height: 62.14)
        .offset(x: 0, y: 0)
      }
      .frame(width: 80, height: 62.14)
      .offset(x: 19.50, y: -303.93)
    }
    .frame(width: 375, height: 812)
    .background(Color(red: 0.98, green: 0.98, blue: 0.98))
    .cornerRadius(40);
  }
}

struct meditateView_Previews: PreviewProvider {
  static var previews: some View {
    meditateView()
  }
}
