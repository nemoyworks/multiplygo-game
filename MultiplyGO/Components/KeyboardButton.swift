import SwiftUI

struct KeyboardButton: View {
    var image: String
    
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 80)
            .shadow(radius: 5)
    }
}
