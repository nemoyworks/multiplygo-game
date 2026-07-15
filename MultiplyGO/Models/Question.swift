import SwiftUI

struct Question {
    var firstFactor: Int
    var secondFactor: Int
    
    var product: Int {
        firstFactor * secondFactor
    }
}
