//

import Foundation

struct questions: Hashable, Codable, Identifiable{
    var QuestionInfo: String
    var Category: Int //1,2,3
    //1 - mood
    //2 - anxiety
    //3 - general
    var Qtype: String
    var id: Int
}
