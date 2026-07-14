import SwiftUI

struct StartButton: View {
    var text: String
    
    var body: some View {
        Image("StartButton")
            .resizable()
            .scaledToFit()
            .frame(width: 180, height: 90)
            .overlay(
                Text(text)
                    .font(.primary(30))
                    .foregroundStyle(Color.black)
            )
    }
}
