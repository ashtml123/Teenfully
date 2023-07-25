

import Foundation
import SwiftUI

struct libraryView: View {
  var body: some View {
    ZStack() {
      Text("Library ")
        .font(Font.custom("Epilogue", size: 26).weight(.medium))
        .lineSpacing(32)
        .foregroundColor(Color(red: 0.22, green: 0.11, blue: 0.20))
        .offset(x: -45, y: -289)
      VStack(alignment: .leading, spacing: 40) {
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
      }
      .padding(EdgeInsets(top: 0, leading: 0, bottom: 169, trailing: 0))
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
      Text("Very interesting article title!")
        .font(Font.custom("Rubik", size: 40).weight(.medium))
        .lineSpacing(50)
        .foregroundColor(Color(red: 0.34, green: 0.22, blue: 0.15))
        .offset(x: -16.50, y: 134)
      ZStack() {
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 375, height: 112)
          .background(.white)
          .offset(x: 0, y: -12.50)
          .shadow(
            color: Color(red: 0, green: 0, blue: 0, opacity: 0.11), radius: 12, y: 4
          )
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
        .offset(x: -137.50, y: -31.50)
      }
      .frame(width: 375, height: 137)
      .offset(x: 0, y: 392.50)
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
