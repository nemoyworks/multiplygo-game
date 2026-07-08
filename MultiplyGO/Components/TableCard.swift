import SwiftUI

struct TableCard: View {
    var image: String
    
    var body: some View {
        Image(image)
            .resizable()
            .interpolation(.none)
            .scaledToFit()
            .frame(width: 130, height: 130)
            .shadow(radius: 10)
    }
}
