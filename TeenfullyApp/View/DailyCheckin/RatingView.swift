//

import SwiftUI

struct RatingView: View {
    @State private var rating: Int = 1
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Rate the question from 1 to 10")
                .font(.headline)
            
            Picker(selection: $rating, label: Text("Rating")) {
                ForEach(1..<11) { number in
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
        RatingView()
    }
}
