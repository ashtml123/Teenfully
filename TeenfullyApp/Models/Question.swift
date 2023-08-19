//

import Foundation
import SwiftUI



struct Question: Identifiable, Codable{
    var id: Int
    var text: String
    var options: [String]
}

