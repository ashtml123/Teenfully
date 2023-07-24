//

import Foundation
import SwiftUI

struct UserData: Hashable, Codable, Identifiable{ //I need to learn what each term means...
        //get off at ogilve station, remember
        var id : Int
        var firstName : String
        var lastName : String
        var birthDay : Int
        var birthMonth : String
        var birthYear: Int
    
        
        private var imageName: String
        var image: Image {
            Image(imageName)
        }
        

        
}

