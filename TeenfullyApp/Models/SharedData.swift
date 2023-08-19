//Shared Data across different files

import Foundation
import Combine

class SharedData: ObservableObject{
    static let shared = SharedData()
    
    @Published var finishDaily: Bool = false// has the user finished their daily checkin?
}
