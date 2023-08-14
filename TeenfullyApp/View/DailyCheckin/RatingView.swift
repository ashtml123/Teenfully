//

import SwiftUI

struct RatingView: View {
    @State private var rating: Int = 1
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
        }
        .padding()
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(lower:1,upper:10)
    }
}
