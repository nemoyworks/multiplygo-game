//
//  ContentView.swift
//  MultiplyGO
//
//  Created by Ростислав Гайда on 25.06.2026.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.primaryColor
                    .ignoresSafeArea()
                VStack {
                    
                }
                VStack {
                    Button {
                        
                    } label: {
                        MenuButton(text: "PLAY")
                    }
                    
                    Button {
                        
                    } label: {
                        MenuButton(text: "PROGRESS")
                    }
                    
                    Button {
                        
                    } label: {
                        MenuButton(text: "SETTINGS")
                    }
                }
            }
            .navigationTitle("MultiplyGO")
        }
    }
}

struct MenuButton: View {
    var text: String
    
    var body: some View {
        Image("MenuButton")
            .overlay(
            Text(text)
                .font(.custom("Kenney-Future-Narrow", size: 20))
                .foregroundStyle(Color.black)
            )
    }
}


#Preview {
    ContentView()
}
