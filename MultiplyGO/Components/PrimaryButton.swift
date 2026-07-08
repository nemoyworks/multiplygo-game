import SwiftUI

struct PrimaryButton: View {
    var text: String
    
    var body: some View {
        Image("PrimaryButton")
            .resizable()
            .scaledToFit()
            .frame(width: 225)
            .overlay(
                Text(text)
                    .font(.primary(30))
                    .foregroundStyle(Color.black)
            )
    }
}
