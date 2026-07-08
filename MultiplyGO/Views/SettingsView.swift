import SwiftUI

struct SettingsView: View {
    @State private var sound = true
    @State private var music = true
    @State private var haptics = true
    @State private var notifications = true
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.appPrimary
                    .ignoresSafeArea()
                
                VStack {
                    Text("SETTINGS")
                        .padding(30)
                        .font(.primary(30))
                    
                    VStack(spacing: 15) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 400, height: 70)
                                .foregroundColor(Color.white)
                            
                            Toggle("SOUND", systemImage: "speaker.wave.3", isOn: $sound)
                                .frame(maxWidth: 380)
                                .font(.primary(20))
                                .toggleStyle(SwitchToggleStyle(tint: .yellow))
                        }
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 400, height: 70)
                                .foregroundColor(Color.white)
                            
                            Toggle("MUSIC", systemImage: "music.note", isOn: $music)
                                .frame(maxWidth: 380)
                                .font(.primary(20))
                                .toggleStyle(SwitchToggleStyle(tint: .yellow))
                        }
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 400, height: 70)
                                .foregroundColor(Color.white)
                            
                            Toggle("HAPTICS", systemImage: "hand.tap", isOn: $haptics)
                                .frame(maxWidth: 380)
                                .font(.primary(20))
                                .toggleStyle(SwitchToggleStyle(tint: .yellow))
                        }
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 400, height: 70)
                                .foregroundColor(Color.white)
                            
                            Toggle("NOTIFICATIONS", systemImage: "bell", isOn: $notifications)
                                .frame(maxWidth: 380)
                                .font(.primary(20))
                                .toggleStyle(SwitchToggleStyle(tint: .yellow))
                        }
                        Spacer()
                    }
                }
                .frame(maxWidth: 420, maxHeight: 650)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(Color.toggleColor)
                )
            }
        }
    }
}

#Preview {
    SettingsView()
}
