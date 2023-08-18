//

import SwiftUI

struct RatingView: View {
    @State private var rating: Int = 5
    @Binding var result: Int
    @Binding var clicked: Bool
    var lower: Int
    var upper: Int
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Rate the question from \(lower) to \(upper)")
                .font(.headline)
            
            Picker(selection: $rating, label: Text("Rating")) {
                ForEach(lower..<upper+1) { number in
                    Text("\(number)").tag(number)
                }
            }
            .pickerStyle(WheelPickerStyle())
            .labelsHidden()
            
            Text("Your rating: \(rating)")
            
            Button(action: {
               clicked = true
                result = rating
            }) {
                Text("Submit")
                    .frame(width: 126, height: 50)
                    .background(Color(red: 0.99, green: 0.76, blue: 0.44))
                    .foregroundColor(.white)
                    .cornerRadius(25)
            }
        }
        .padding()
    }
}
