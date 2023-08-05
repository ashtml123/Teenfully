/*
 See LICENSE folder for this sample’s licensing information.
 
 Abstract:
 A representation of a single landmark.
 */

import Foundation
import SwiftUI
import CoreLocation

struct Article:Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    var author: String
    var text: String
    var description: String
    var datePublished: Date
}
