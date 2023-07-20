import SwiftUI

struct libraryView: View {
  var body: some View {
    ZStack() {
      Text("Library ")
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
        .offset(x: -0.50, y: 248)
        ZStack() {
          ZStack() {
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 325, height: 238)
              .background(Color(red: 1, green: 0.95, blue: 0.91))
              .cornerRadius(16)
              .offset(x: 0, y: 0)
            ZStack() {
              Rectangle()
                .foregroundColor(.clear)
                .frame(width: 117, height: 40)
                .background(Color(red: 0.29, green: 0.29, blue: 0.79))
                .cornerRadius(9)
                .offset(x: 0, y: 0)
              Text("Read")
                .font(Font.custom("Epilogue", size: 14).weight(.bold))
                .lineSpacing(30)
                .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                .offset(x: 0.50, y: 0)
            }
            .frame(width: 117, height: 40)
            .offset(x: -8, y: 73)
          }
          .frame(width: 325, height: 238)
          .offset(x: -2.50, y: 0)
          Rectangle()
            .foregroundColor(.clear)
            .frame(width: 295, height: 0)
            .overlay(
              Rectangle()
                .stroke(
                  Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0.30), lineWidth: 0.50
                )
            )
            .offset(x: 17.50, y: -48)
        }
        .frame(width: 330, height: 238)
        .offset(x: 2, y: -223.50)
      }
      .frame(width: 326, height: 685)
      .offset(x: 0.50, y: 118.50)
      ZStack() {

      }
      .frame(width: 80, height: 62.14)
      .offset(x: 0.50, y: -294.93)
      Text("Should you use social media? ")
        .font(Font.custom("Rubik", size: 40).weight(.medium))
        .lineSpacing(50)
        .foregroundColor(Color(red: 0.34, green: 0.22, blue: 0.15))
        .offset(x: -2.50, y: -132)
    }
    .frame(width: 375, height: 812)
    .background(Color(red: 0.98, green: 0.98, blue: 0.98))
    .cornerRadius(40);
  }
}

struct libraryView_Previews: PreviewProvider {
  static var previews: some View {
      libraryView()
  }
}
