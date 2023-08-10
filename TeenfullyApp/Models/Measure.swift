// Measures the performance of a user given daily checkin results
// the goal is that each measurement corresponds to each user

import Foundation
import Combine

struct Measure:Hashable, Codable, Identifiable{
    var id: String //consistent with user id
    var date: Int //date of measurement
    // The following is a list of measurements
    var mood: Int
    var anxiety: Int
    var decision: Int
    var behavior: Int
    var physical: Int
    var substance: Int
    var social: Int
    var cognitive: Int
}


