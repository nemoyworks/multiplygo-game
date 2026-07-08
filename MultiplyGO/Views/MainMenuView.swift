//
//  ContentView.swift
//  MultiplyGO
//
//  Created by Ростислав Гайда on 25.06.2026.
//

import SwiftUI
import SwiftData

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
                            MenuButton(text: "PLAY")
                        }
                        
                        NavigationLink() {
                            PracticeView()
                        } label: {
                            MenuButton(text: "PRACTICE")
                        }
                        
                        NavigationLink() {
                            ProgressView()
                        } label: {
                            MenuButton(text: "PROGRESS")
                        }
                        
                        NavigationLink() {
                            SettingsView()
                        } label: {
                            MenuButton(text: "SETTINGS")
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
