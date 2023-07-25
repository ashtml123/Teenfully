//

import Foundation
import SwiftUI

struct UserData: Hashable, Codable, Identifiable{ //I need to learn what each term means...
    var id : Int
    var firstName : String
    var lastName : String
    var birthDay : Int
    var birthMonth : String
    var birthYear: Int
    var streakNumber: Int

    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}

