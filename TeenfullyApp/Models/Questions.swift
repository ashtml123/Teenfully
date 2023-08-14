//

import Foundation
import SwiftUI

struct questions: Hashable, Codable, Identifiable{
    var QuestionInfo: String
    var QuestionType: Int //1,2,3
    //1 - mood
    //2 - anxiety
    //3 - general
    var id: Int
    
}
