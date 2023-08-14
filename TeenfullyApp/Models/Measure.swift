// Measures the performance of a user given daily checkin results
// the goal is that each measurement corresponds to each user

import Foundation
import Combine

struct Measure:Hashable, Codable, Identifiable{
    var id: String //unique id for data
    var user: String //consistent with user id
    var date: Int //date of measurement
    // The following is a list of measurements
    var mood: Int //1 in qtype
    var anxiety: Int //2 in qtype
    var general: Int //3 in qtype
}


