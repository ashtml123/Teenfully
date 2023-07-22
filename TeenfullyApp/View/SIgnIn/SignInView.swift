import SwiftUI
import Firebase
import FirebaseAuth
import GoogleDataTransport

struct SignInView: View {
  var body: some View {
    ZStack() {
      Group {
        Text("Welcome to Teenfully!")
          .font(Font.custom("Inter", size: 25.60).weight(.bold))
          .foregroundColor(.white)
          .offset(x: -2.50, y: -338.50)
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 368, height: 625)
          .background(.white)
          .cornerRadius(23)
          .offset(x: 0, y: 25.50)
        Text("Login to your Account")
            .font(Font.custom("Inter", size:21).weight(.bold))
          .foregroundColor(Color(red: 0.10, green: 0.10, blue: 0.10))
          .offset(x: -41, y: -235.50)
          Text("Through Apple or Google")
              .font(Font.custom("Inter", size:14).weight(.bold))
              .offset(x:-35,y:-200)
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 271, height: 42)
          .cornerRadius(5)
          .overlay(
            RoundedRectangle(cornerRadius: 5)
              .inset(by: 0.50)
              .stroke(Color(red: 0.61, green: 0.61, blue: 0.61), lineWidth: 0.50)
          )
          .offset(x: -0.50, y: -5)
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 271, height: 42)
          .cornerRadius(5)
          .overlay(
            RoundedRectangle(cornerRadius: 5)
              .inset(by: 0.50)
              .stroke(Color(red: 0.85, green: 0.85, blue: 0.85), lineWidth: 0.50)
          )
          .offset(x: -0.50, y: -145)
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 271, height: 42)
          .cornerRadius(5)
          .overlay(
            RoundedRectangle(cornerRadius: 5)
              .inset(by: 0.50)
              .stroke(Color(red: 0.85, green: 0.85, blue: 0.85), lineWidth: 0.50)
          )
          .offset(x: -0.50, y: 48)
        Text("Email Address")
          .font(Font.custom("Inter", size: 12.60).weight(.medium))
          .foregroundColor(Color(red: 0.85, green: 0.85, blue: 0.85))
          .offset(x: -77, y: -5.50)
        Text("Password")
          .font(Font.custom("Inter", size: 12.60).weight(.medium))
          .foregroundColor(Color(red: 0.85, green: 0.85, blue: 0.85))
          .offset(x: -90.50, y: 47.50)
      };Group {
        Text("Don’t have an account? Sign Up")
          .font(Font.custom("Inter", size: 12.60))
          .foregroundColor(Color(red: 0.04, green: 0.04, blue: 0.04))
          .offset(x: -8, y: 163.50)
        Text("Google")
          .font(Font.custom("Inter", size: 13.60).weight(.medium))
          .foregroundColor(Color(red: 0.04, green: 0.04, blue: 0.04))
          .offset(x: -63.50, y: -144)
        Image("GoogleLogo")
              .resizable()
              .scaledToFit()
              .frame(height:25, alignment: .center)
              .offset(x:-100,y:-144)
        Text("Apple")
          .font(Font.custom("Inter", size: 13.60).weight(.medium))
          .foregroundColor(Color(red: 0.04, green: 0.04, blue: 0.04))
          .offset(x: 65, y: -145)
        Image("AppleLogo")
              .resizable()
              .scaledToFit()
              .frame(height: 25,alignment: .center)
              .offset(x: 30,y: -145)
        ZStack() {
          Rectangle()
            .foregroundColor(.clear)
            .frame(width: 271, height: 42)
            .background(Color(red: 1, green: 0.51, blue: 0.21))
            .cornerRadius(5)
            .offset(x: 0, y: 0)
          Text("LOG IN")
            .font(Font.custom("Inter", size: 13.60).weight(.semibold))
            .foregroundColor(.white)
            .offset(x: 0.50, y: 0)
        }
        .frame(width: 271, height: 42)
        .offset(x: -0.50, y: 122)
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 271, height: 0)
          .overlay(
            Rectangle()
              .stroke(Color(red: 0.85, green: 0.85, blue: 0.85), lineWidth: 1)
          )
          .offset(x: -0.50, y: -72.50)
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 40, height: 0)
          .overlay(
            Rectangle()
              .stroke(Color(red: 0.85, green: 0.85, blue: 0.85), lineWidth: 0.50)
          )
          .offset(x: 20, y: -125)
          .rotationEffect(.degrees(90))
        Ellipse()
          .foregroundColor(.clear)
          .frame(width: 34, height: 34)
          .background(.white)
          .overlay(
            Ellipse()
              .inset(by: 0.92)
              .stroke(Color(red: 0.85, green: 0.85, blue: 0.85), lineWidth: 0.92)
          )
          .offset(x: 0, y: -75)
        Text("Or")
          .font(Font.custom("Inter", size: 13.60).weight(.medium))
          .foregroundColor(Color(red: 0.84, green: 0.83, blue: 0.85))
          .offset(x: 0, y: -75)
      };Group {
        ZStack() { }
        .frame(width: 18, height: 18)
        .offset(x: -106, y: -145)
      }
    }
    .frame(width: 428, height: 926)
    .background(Color(red: 1, green: 0.51, blue: 0.21));
  }
}

struct SignInView_Previews: PreviewProvider {
  static var previews: some View {
    SignInView()
  }
}

