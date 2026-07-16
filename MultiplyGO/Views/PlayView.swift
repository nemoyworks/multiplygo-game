import SwiftUI

struct PlayView: View {
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image.appBackground
                    .resizable()
                    .ignoresSafeArea()
                
            }
        }
    }
}

#Preview {
    PlayView()
}
