import SwiftUI

struct ScreenHeader: View {
    var text: String
    var font: Font
    
    var body: some View {
        Image("ScreenHeader")
            .resizable()
            .scaledToFit()
            .frame(width: 250)
            .overlay(
                Text(text)
                    .font(font)
            )
    }
}
