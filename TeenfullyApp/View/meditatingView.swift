import SwiftUI

struct meditatingView: View {
  var body: some View {
    ZStack() {
      Text("Meditating")
        .font(Font.custom("Epilogue", size: 26).weight(.medium))
        .lineSpacing(32)
        .foregroundColor(Color(red: 0.22, green: 0.11, blue: 0.20))
        .offset(x: -25, y: -216)
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
      ZStack() {
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
              .offset(x: 92, y: 0)
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
            .offset(x: -92, y: 0)
          }
          .frame(width: 236, height: 52)
          .offset(x: -45.50, y: -5.50)
        }
        .frame(width: 375, height: 85)
        .offset(x: -0.50, y: 248)
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 295, height: 0)
          .overlay(
            Rectangle()
              .stroke(
                Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0.30), lineWidth: 0.50
              )
          )
          .offset(x: -1.50, y: -40.50)
        ZStack() {
          ZStack() { }
          .frame(width: 203, height: 158)
          .offset(x: 0, y: 0)
        }
        .frame(width: 203, height: 158)
        .offset(x: -0.50, y: -119.50)
        ZStack() {

        }
        .frame(width: 57, height: 57)
        .offset(x: -0.50, y: 82)
        ZStack() {

        }
        .frame(width: 44, height: 44)
        .offset(x: 66, y: 82.50)
        ZStack() {

        }
        .frame(width: 44, height: 44)
        .offset(x: -69, y: 82.50)
        ZStack() {

        }
        .frame(width: 32, height: 32)
        .offset(x: 112, y: -358.50)
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 301, height: 5)
          .background(.black)
          .offset(x: -1.50, y: 33)
      }
      .frame(width: 326, height: 685)
      .offset(x: 0.50, y: 118.50)
    }
    .frame(width: 375, height: 812)
    .background(Color(red: 0.98, green: 0.98, blue: 0.98))
    .cornerRadius(40);
  }
}

struct meditatingView_Previews: PreviewProvider {
  static var previews: some View {
      meditatingView()
  }
}
