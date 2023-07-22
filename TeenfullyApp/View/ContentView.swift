import SwiftUI

var name = "Ian"

struct ContentView: View {
  var body: some View {
      NavigationView {
      ZStack() {
          Text("Welcome Back, \(name)!")
              .font(Font.custom("Epilogue", size: 26).weight(.medium))
              .lineSpacing(32)
              .foregroundColor(Color(red: 0.22, green: 0.11, blue: 0.20))
              .offset(x: -45, y: -273)
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
          .offset(x: 137, y: -343.50)
              ZStack() {
                  ZStack() {
                      ZStack() {
                          Rectangle()
                              .foregroundColor(.clear)
                              .frame(width: 325, height: 151)
                              .background(Color(red: 1, green: 0.95, blue: 0.90))
                              .cornerRadius(20)
                              .offset(x: 0, y: 0)
                          ZStack() {
                              Rectangle()
                                  .foregroundColor(.clear)
                                  .frame(width: 325, height: 151)
                                  .background(Color(red: 1, green: 0.95, blue: 0.90))
                                  .cornerRadius(20)
                                  .offset(x: 0, y: 0)
                              ZStack() {
                                  Rectangle()
                                      .foregroundColor(.clear)
                                      .frame(width: 111.52, height: 200.25)
                                      .background(
                                        AsyncImage(url: URL(string: "https://via.placeholder.com/112x200"))
                                      )
                                      .offset(x: 126.06, y: 11.96)
                                      .rotationEffect(.degrees(-60))
                                      .opacity(0.30)
                                  Rectangle()
                                      .foregroundColor(.clear)
                                      .frame(width: 111.52, height: 200.25)
                                      .background(
                                        AsyncImage(url: URL(string: "https://via.placeholder.com/112x200"))
                                      )
                                      .offset(x: 126.06, y: 12.96)
                                      .rotationEffect(.degrees(-60))
                                      .opacity(0.30)
                              }
                              .frame(width: 356.50, height: 92.99)
                              .offset(x: 82.75, y: 86.99)
                          }
                          .frame(width: 325, height: 151)
                          .offset(x: 0, y: 0)
                          VStack(alignment: .leading, spacing: 8) {
                              Text("Take your daily check in ")
                                  .font(Font.custom("Epilogue", size: 22).weight(.heavy))
                                  .foregroundColor(Color(red: 0.34, green: 0.22, blue: 0.15))
                              Text("Let’s see how you are feeling today!")
                                  .font(Font.custom("Rubik", size: 12))
                                  .lineSpacing(18)
                                  .foregroundColor(Color(red: 0.34, green: 0.22, blue: 0.15))
                                  .opacity(0.90)
                              ZStack() {
                                  Rectangle()
                                      .foregroundColor(.clear)
                                      .frame(width: 138, height: 39)
                                      .cornerRadius(10)
                                      .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .inset(by: 0.50)
                                            .stroke(Color(red: 0.94, green: 0.36, blue: 0.66), lineWidth: 0.50)
                                      )
                                      .offset(x: 0, y: 0)
                                  NavigationLink {
                                      dailyCheckinView()
                                  } label: {
                                      Text("Start Now")
                                          .font(Font.custom("Epilogue", size: 16).weight(.bold))
                                          .lineSpacing(32)
                                          .foregroundColor(Color(red: 1, green: 0.51, blue: 0.21))
                                          .offset(x: -28, y: 0.38)
                                  }
                              }
                              .frame(width: 138, height: 39)
                          }
                          .frame(width: 199, height: 114)
                          .offset(x: -43, y: 4.62)
                          HStack(spacing: 0) {
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
                          }
                          .padding(EdgeInsets(top: 7, leading: 2, bottom: 6, trailing: 1.34))
                          .frame(width: 85.27, height: 80)
                          .offset(x: 88.14, y: 4.50)
                      }
                      .frame(width: 325, height: 151)
                      .offset(x: 0.50, y: -213.50)
                      ZStack() {
                          Rectangle()
                              .foregroundColor(.clear)
                              .frame(width: 325, height: 151)
                              .background(Color(red: 1, green: 0.95, blue: 0.90))
                              .cornerRadius(20)
                              .offset(x: 0, y: 0)
                          ZStack() {
                              Rectangle()
                                  .foregroundColor(.clear)
                                  .frame(width: 325, height: 151)
                                  .background(Color(red: 1, green: 0.95, blue: 0.90))
                                  .cornerRadius(20)
                                  .offset(x: 0, y: 0)
                              ZStack() {
                    
                              }
                              .frame(width: 356.50, height: 92.99)
                              .offset(x: 82.75, y: 86.99)
                          }
                          .frame(width: 325, height: 151)
                          .offset(x: 0, y: 0)
                          VStack(alignment: .leading, spacing: 8) {
                              Text("Take your daily check in ")
                                  .font(Font.custom("Epilogue", size: 22).weight(.heavy))
                                  .foregroundColor(Color(red: 0.34, green: 0.22, blue: 0.15))
                              Text("Let’s see how you are feeling today!")
                                  .font(Font.custom("Rubik", size: 12))
                                  .lineSpacing(18)
                                  .foregroundColor(Color(red: 0.34, green: 0.22, blue: 0.15))
                                  .opacity(0.90)
                              ZStack() {
                                  Rectangle()
                                      .foregroundColor(.clear)
                                      .frame(width: 138, height: 39)
                                      .cornerRadius(10)
                                      .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .inset(by: 0.50)
                                            .stroke(Color(red: 0.94, green: 0.36, blue: 0.66), lineWidth: 0.50)
                                      )
                                      .offset(x: 0, y: 0)
                                  NavigationLink {
                                      dailyCheckinView()
                                  } label: {
                                      Text("Start Now")
                                          .font(Font.custom("Epilogue", size: 16).weight(.bold))
                                          .lineSpacing(32)
                                          .foregroundColor(Color(red: 1, green: 0.51, blue: 0.21))
                                          .offset(x: -28, y: 0.38)
                                  }
                              }
                              .frame(width: 138, height: 39)
                          }
                          .frame(width: 199, height: 114)
                          .offset(x: -43, y: 4.62)
                          HStack(spacing: 0) {
                              ZStack() {
                                  ZStack() {
                                Image("DailyCheckin")
                                          .resizable()
                                          .frame(width:90,height:90)
                                          .offset(x:40,y:-20)
                                  }
                                  .frame(width: 36.19, height: 41.69)
                                  .offset(x: -19.42, y: 12.66)
                                  ZStack() { }
                                      .frame(width: 39.64, height: 41.70)
                                      .offset(x: 4.85, y: 21.69)
                                      .rotationEffect(.degrees(60))
                              }
                              .frame(width: 81.94, height: 67)
                          }
                          .padding(EdgeInsets(top: 7, leading: 2, bottom: 6, trailing: 1.34))
                          .frame(width: 85.27, height: 80)
                          .offset(x: 88.14, y: 4.50)
                      }
                      .frame(width: 325, height: 151)
                      .offset(x: 0.50, y: -213.50)
                      ZStack() {
                          Rectangle()
                              .foregroundColor(.clear)
                              .frame(width: 325, height: 151)
                              .background(Color(red: 0.33, green: 0.63, blue: 0.43))
                              .cornerRadius(20)
                              .offset(x: 0, y: 0)
                          ZStack() {
                              ZStack() {
                                  Image("MeditationIcon")
                                      .resizable()
                                      .frame(width:85,height:85)
                                      .offset(x:20,y:-100)
                              }
                              .frame(width: 356.50, height: 92.99)
                              .offset(x: 82.75, y: 86.99)
                          }
                          .frame(width: 325, height: 151)
                          .offset(x: 0, y: 0)
                          VStack(alignment: .leading, spacing: 8) {
                              Text("Meditate")
                                  .font(Font.custom("Epilogue", size: 22).weight(.heavy))
                                  .foregroundColor(.white)
                              Text("Experience peace always inherent to consciousness ")
                                  .font(Font.custom("Rubik", size: 12))
                                  .lineSpacing(18)
                                  .foregroundColor(.white)
                                  .opacity(0.90)
                              ZStack() {
                                  Rectangle()
                                      .foregroundColor(.clear)
                                      .frame(width: 138, height: 39)
                                      .cornerRadius(10)
                                      .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .inset(by: 0.50)
                                            .stroke(Color(red: 0.94, green: 0.36, blue: 0.66), lineWidth: 0.50)
                                      )
                                      .offset(x: 0, y: 0)
                                  NavigationLink {
                                      meditateView()
                                  } label: {
                                      Text("Explore")
                                          .font(Font.custom("Epilogue", size: 16).weight(.bold))
                                          .lineSpacing(32)
                                          .foregroundColor(.white)
                                          .offset(x: -38, y: 0.38)
                                  }
                                  
                              }
                              .frame(width: 138, height: 39)
                          }
                          .frame(width: 199, height: 114)
                          .offset(x: -43, y: 4.62)
                          ZStack() {
                              ZStack() { }
                                  .frame(width: 80, height: 62.14)
                                  .offset(x: 0, y: 0)
                          }
                          .frame(width: 80, height: 62.14)
                          .offset(x: 94.50, y: -0.43)
                      }
                      .frame(width: 325, height: 151)
                      .offset(x: 0.50, y: 128.50)
                      ZStack() {
                          Rectangle()
                              .foregroundColor(.clear)
                              .frame(width: 325, height: 151)
                              .background(Color(red: 0.29, green: 0.29, blue: 0.79))
                              .cornerRadius(20)
                              .offset(x: 0, y: 0)
                          ZStack() {
                              ZStack() {
                                  Image("Library")
                              }
                              .frame(width: 356.50, height: 92.99)
                              .offset(x: 82.75, y: 86.99)
                          }
                          .frame(width: 325, height: 151)
                          .offset(x: 0, y: 0)
                          VStack(alignment: .leading, spacing: 8) {
                              Text("Library")
                                  .font(Font.custom("Epilogue", size: 22).weight(.heavy))
                                  .foregroundColor(.white)
                              ZStack() {
                                  Rectangle()
                                      .foregroundColor(.clear)
                                      .frame(width: 138, height: 39)
                                      .cornerRadius(10)
                                      .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .inset(by: 0.50)
                                            .stroke(Color(red: 0.94, green: 0.36, blue: 0.66), lineWidth: 0.50)
                                      )
                                      .offset(x: 0, y: 0)
                                  NavigationLink {
                                      libraryView()
                                  } label: {
                                      Text("Explore")
                                          .font(Font.custom("Epilogue", size: 16).weight(.bold))
                                          .lineSpacing(32)
                                          .foregroundColor(.white)
                                          .offset(x: -38, y: 0.38)
                                  }
                              }
                              .frame(width: 138, height: 39)
                          }
                          .frame(width: 199, height: 70)
                          .offset(x: -43, y: -17.38)
                          ZStack() {
                              
                          }
                          .frame(width: 80, height: 62.14)
                          .offset(x: 94.50, y: -0.43)
                      }
                      .frame(width: 325, height: 151)
                      .offset(x: 0.50, y: 300.50)
                      ZStack() {
                          Rectangle()
                              .foregroundColor(.clear)
                              .frame(width: 325, height: 151)
                              .background(Color(red: 1, green: 0.51, blue: 0.21))
                              .cornerRadius(20)
                              .offset(x: 0, y: 0)
                          ZStack() {
                              ZStack() {//corresponds to habit builder
                                  Image("HabitBuilder")
                                      .resizable()
                                      .scaledToFit()
                                      .frame(width:50)
                                      .offset(x:30,y:-90)
                              }
                              .frame(width: 356.50, height: 92.99)
                              .offset(x: 82.75, y: 86.99)
                          }
                          .frame(width: 325, height: 151)
                          .offset(x: 0, y: 0)
                          VStack(alignment: .leading, spacing: 8) {
                              Text("Habit Builder")
                                  .font(Font.custom("Epilogue", size: 22).weight(.heavy))
                                  .foregroundColor(.white)
                              Text("Relearn your relationship with your phone")
                                  .font(Font.custom("Rubik", size: 12))
                                  .lineSpacing(18)
                                  .foregroundColor(.white)
                                  .opacity(0.90)
                              ZStack() {
                                  Rectangle()
                                      .foregroundColor(.clear)
                                      .frame(width: 138, height: 39)
                                      .cornerRadius(10)
                                      .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .inset(by: 0.50)
                                            .stroke(Color(red: 0.94, green: 0.36, blue: 0.66), lineWidth: 0.50)
                                      )
                                      .offset(x: 0, y: 0)
                                  NavigationLink {
                                      habitBuilderView()
                                  } label: {
                                      Text("Continue")
                                          .font(Font.custom("Epilogue", size: 16).weight(.bold))
                                          .lineSpacing(32)
                                          .foregroundColor(.white)
                                          .offset(x: -38, y: 0.38)
                                  }
                              }
                              .frame(width: 138, height: 39)
                          }
                          .frame(width: 199, height: 114)
                          .offset(x: -43, y: 4.62)
                      }
                      .frame(width: 325, height: 151)
                      .offset(x: -0.50, y: -42.50)
                  }
                  .frame(width: 326, height: 578)
                  .offset(x: 0, y: -53.50)
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
                              .frame(width: 28, height: 28)
                              .offset(x: 0, y: 0)
                          }
                          .frame(width: 52, height: 52)
                          .offset(x: -92, y: 0)
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
                          .offset(x: 0, y: 0)
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
                          .offset(x: 92, y: 0)
                      }
                      .frame(width: 236, height: 52)
                      .offset(x: -45.50, y: -5.50)
                  }
                  .frame(width: 375, height: 85)
                  .offset(x: -0.50, y: 248)
              }
              .frame(width: 326, height: 685)
              .offset(x: 0.50, y: 118.50)
          }
          .frame(width: 375, height: 812)
          .background(Color(red: 0.98, green: 0.98, blue: 0.98))
          .cornerRadius(40);
      }
  }
}

struct Contentview_Previews: PreviewProvider {
  static var previews: some View {
      ContentView()
  }
}
