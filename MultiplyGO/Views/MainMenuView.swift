import SwiftUI

struct MainMenuView: View {
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.primaryColor
                    .ignoresSafeArea()
                
                VStack {
                    
                    VStack {
                        Image("AppLogo")
                            .resizable()
                            .scaledToFit()
                            .offset(y: 80)
                    }
                    
                    VStack {
                        NavigationLink() {
                            PlayView()
                        } label: {
                            PrimaryButton(text: "PLAY")
                        }
                        
                        NavigationLink() {
                            PracticeView()
                        } label: {
                            PrimaryButton(text: "PRACTICE")
                        }
                        
                        NavigationLink() {
                            ProgressView()
                        } label: {
                            PrimaryButton(text: "PROGRESS")
                        }
                        
                        NavigationLink() {
                            SettingsView()
                        } label: {
                            PrimaryButton(text: "SETTINGS")
                        }
                        Spacer()
                    }
                }
            }
        }
    }
}

#Preview {
    MainMenuView()
}
