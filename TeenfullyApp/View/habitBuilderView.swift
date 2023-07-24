import SwiftUI

struct habitBuilderView: View {
  var body: some View {
    ZStack() {
      Group {
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
          Text("Daily Goals ")
            .font(Font.custom("Epilogue", size: 26).weight(.medium))
            .lineSpacing(32)
            .foregroundColor(.green)
            .offset(x: -53, y: -329.50)
          Text("Weekly Goals ")
            .font(Font.custom("Epilogue", size: 26).weight(.medium))
            .lineSpacing(32)
            .foregroundColor(.green)
            .offset(x: -53, y: 60.50)
        }
        .frame(width: 326, height: 685)
        .offset(x: 0.50, y: 120.50)
        Text("Habit Builder")
              .font(.title)
          .lineSpacing(32)
          .foregroundColor(Color(red: 0.22, green: 0.11, blue: 0.20))
          .offset(x: -8, y: -290)
        ZStack() {
          ZStack() {
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 325, height: 128)
              .background(Color(red: 1, green: 0.95, blue: 0.91))
              .cornerRadius(16)
              .offset(x: 0, y: 0)
            ZStack() {
              Rectangle()
                .foregroundColor(.clear)
                .frame(width: 117, height: 40)
                .background(Color(red: 1, green: 0.51, blue: 0.21))
                .cornerRadius(9)
                .offset(x: 0, y: 0)
              Text("Completed")
                .font(Font.custom("Epilogue", size: 14).weight(.bold))
                .lineSpacing(30)
                .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                .offset(x: -2.50, y: 1)
            }
            .frame(width: 117, height: 40)
            .offset(x: -75, y: 37)
            Text("Delete")
              .font(Font.custom("Epilogue", size: 14).weight(.bold))
              .lineSpacing(30)
              .foregroundColor(Color(red: 1, green: 0.51, blue: 0.21))
              .offset(x: 50.50, y: 33)
            Text("Take a walk")
              .font(Font.custom("Rubik", size: 40).weight(.medium))
              .lineSpacing(18)
              .foregroundColor(Color(red: 0.34, green: 0.22, blue: 0.15))
              .offset(x: -12, y: -12)
          }
          .frame(width: 325, height: 128)
          .offset(x: 0, y: 0)
          Rectangle()
            .foregroundColor(.clear)
            .frame(width: 295, height: 0)
            .overlay(
              Rectangle()
                .stroke(
                  Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0.30), lineWidth: 0.50
                )
            )
            .offset(x: 0, y: 7)
        }
        .frame(width: 325, height: 128)
        .offset(x: 0, y: -90)
        ZStack() {
          ZStack() {
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 325, height: 128)
              .background(Color(red: 1, green: 0.95, blue: 0.91))
              .cornerRadius(16)
              .offset(x: 0, y: 0)
            ZStack() {
              Rectangle()
                .foregroundColor(.clear)
                .frame(width: 117, height: 40)
                .background(Color(red: 0.33, green: 0.62, blue: 0.43))
                .cornerRadius(9)
                .offset(x: 0, y: 0)
              Text("Completed")
                .font(Font.custom("Epilogue", size: 14).weight(.bold))
                .lineSpacing(30)
                .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                .offset(x: -2.50, y: 1)
            }
            .frame(width: 117, height: 40)
            .offset(x: -75, y: 37)
            Text("Delete")
              .font(Font.custom("Epilogue", size: 14).weight(.bold))
              .lineSpacing(30)
              .foregroundColor(Color(red: 1, green: 0.51, blue: 0.21))
              .offset(x: 50.50, y: 33)
            Text("Take a walk")
              .font(Font.custom("Rubik", size: 40).weight(.medium))
              .lineSpacing(18)
              .foregroundColor(Color(red: 0.34, green: 0.22, blue: 0.15))
              .offset(x: -12, y: -12)
          }
          .frame(width: 325, height: 128)
          .offset(x: 0, y: 0)
          Rectangle()
            .foregroundColor(.clear)
            .frame(width: 295, height: 0)
            .overlay(
              Rectangle()
                .stroke(
                  Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0.30), lineWidth: 0.50
                )
            )
            .offset(x: 0, y: 7)
        }
        .frame(width: 325, height: 128)
        .offset(x: 0, y: -90)
        ZStack() {
          ZStack() {
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 325, height: 128)
              .background(Color(red: 1, green: 0.95, blue: 0.91))
              .cornerRadius(16)
              .offset(x: 0, y: 0)
            ZStack() {
              Rectangle()
                .foregroundColor(.clear)
                .frame(width: 117, height: 40)
                .background(Color(red: 0.33, green: 0.62, blue: 0.43))
                .cornerRadius(9)
                .offset(x: 0, y: 0)
              Text("Completed")
                .font(Font.custom("Epilogue", size: 14).weight(.bold))
                .lineSpacing(30)
                .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                .offset(x: -2.50, y: 1)
            }
            .frame(width: 117, height: 40)
            .offset(x: -75, y: 37)
            Text("Delete")
              .font(Font.custom("Epilogue", size: 14).weight(.bold))
              .lineSpacing(30)
              .foregroundColor(Color(red: 1, green: 0.51, blue: 0.21))
              .offset(x: 50.50, y: 33)
            Text("Take a walk")
              .font(Font.custom("Rubik", size: 40).weight(.medium))
              .lineSpacing(18)
              .foregroundColor(Color(red: 0.34, green: 0.22, blue: 0.15))
              .offset(x: -12, y: -12)
          }
          .frame(width: 325, height: 128)
          .offset(x: 0, y: 0)
          Rectangle()
            .foregroundColor(.clear)
            .frame(width: 295, height: 0)
            .overlay(
              Rectangle()
                .stroke(
                  Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0.30), lineWidth: 0.50
                )
            )
            .offset(x: 0, y: 7)
        }
        .frame(width: 325, height: 128)
        .offset(x: 0, y: -90)
      };Group {
        ZStack() {
          ZStack() {
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 325, height: 128)
              .background(Color(red: 1, green: 0.95, blue: 0.91))
              .cornerRadius(16)
              .offset(x: 0, y: 0)
            ZStack() {
              Rectangle()
                .foregroundColor(.clear)
                .frame(width: 117, height: 40)
                .background(Color(red: 0.33, green: 0.62, blue: 0.43))
                .cornerRadius(9)
                .offset(x: 0, y: 0)
              Text("Completed")
                .font(Font.custom("Epilogue", size: 14).weight(.bold))
                .lineSpacing(30)
                .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                .offset(x: -2.50, y: 1)
            }
            .frame(width: 117, height: 40)
            .offset(x: -75, y: 37)
            Text("Delete")
              .font(Font.custom("Epilogue", size: 14).weight(.bold))
              .lineSpacing(30)
              .foregroundColor(Color(red: 1, green: 0.51, blue: 0.21))
              .offset(x: 50.50, y: 33)
            Text("Exercise ")
              .font(Font.custom("Rubik", size: 40).weight(.medium))
              .lineSpacing(18)
              .foregroundColor(Color(red: 0.34, green: 0.22, blue: 0.15))
              .offset(x: -12, y: -12)
          }
          .frame(width: 325, height: 128)
          .offset(x: 0, y: 0)
          Rectangle()
            .foregroundColor(.clear)
            .frame(width: 295, height: 0)
            .overlay(
              Rectangle()
                .stroke(
                  Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0.30), lineWidth: 0.50
                )
            )
            .offset(x: 0, y: 7)
        }
        .frame(width: 325, height: 128)
        .offset(x: 0, y: 73)
        ZStack() {
          ZStack() {
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 325, height: 128)
              .background(Color(red: 1, green: 0.95, blue: 0.91))
              .cornerRadius(16)
              .offset(x: 0, y: 0)
            ZStack() {
              Rectangle()
                .foregroundColor(.clear)
                .frame(width: 117, height: 40)
                .background(Color(red: 0.33, green: 0.62, blue: 0.43))
                .cornerRadius(9)
                .offset(x: 0, y: 0)
              Text("Completed")
                .font(Font.custom("Epilogue", size: 14).weight(.bold))
                .lineSpacing(30)
                .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                .offset(x: -2.50, y: 1)
            }
            .frame(width: 117, height: 40)
            .offset(x: -75, y: 37)
            Text("Delete")
              .font(Font.custom("Epilogue", size: 14).weight(.bold))
              .lineSpacing(30)
              .foregroundColor(Color(red: 1, green: 0.51, blue: 0.21))
              .offset(x: 50.50, y: 33)
            Text("Read a Book")
              .font(Font.custom("Rubik", size: 40).weight(.medium))
              .lineSpacing(18)
              .foregroundColor(Color(red: 0.34, green: 0.22, blue: 0.15))
              .offset(x: -12, y: -12)
          }
          .frame(width: 325, height: 128)
          .offset(x: 0, y: 0)
          Rectangle()
            .foregroundColor(.clear)
            .frame(width: 295, height: 0)
            .overlay(
              Rectangle()
                .stroke(
                  Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0.30), lineWidth: 0.50
                )
            )
            .offset(x: 0, y: 7)
        }
        .frame(width: 325, height: 128)
        .offset(x: 0, y: 295)
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
        .offset(x: 0, y: 368.50)
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 295, height: 0)
          .overlay(
            Rectangle()
              .stroke(
                Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0.30), lineWidth: 0.50
              )
          )
          .offset(x: 0, y: 64)
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 295, height: 0)
          .overlay(
            Rectangle()
              .stroke(
                Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0.30), lineWidth: 0.50
              )
          )
          .offset(x: 0, y: 71)
      }
    }
    .frame(width: 375, height: 812)
    .background(Color(red: 0.98, green: 0.98, blue: 0.98))
    .cornerRadius(40);
  }
}

struct habitBuilderView_Previews: PreviewProvider {
  static var previews: some View {
      habitBuilderView()
  }
}
