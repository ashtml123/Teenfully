import SwiftUI

struct meditateView: View {
  var body: some View {
      ZStack{
          Text("Meditate ")
              .font(
                Font.custom("Epilogue", size: 40)
                    .weight(.medium)
              )
              .foregroundColor(Color(red: 0.22, green: 0.11, blue: 0.2))
              .frame(width: 198, height: 29, alignment: .topLeading)
              .offset(x:-20,y:-300)
          MeditateBox(timeDuration: 10)
              .offset(y:-160)
          MeditateBox(timeDuration: 5)
              .offset(y:20)
      }
  }
}

struct meditateView_Previews: PreviewProvider {
  static var previews: some View {
    meditateView()
  }
}
