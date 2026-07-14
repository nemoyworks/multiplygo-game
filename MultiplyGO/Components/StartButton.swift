import SwiftUI

struct StartButton: View {
    var text: String
    
    var body: some View {
        Image("StartButton")
            .resizable()
            .scaledToFit()
            .frame(width: 170, height: 80)
            .overlay(
                Text(text)
                    .font(.primary(25))
                    .foregroundStyle(Color.black)
            )
    }
}
