//
//  PracticeView.swift
//  MultiplyGO
//
//  Created by Ростислав Гайда on 26.06.2026.
//

import SwiftUI

struct PracticeView: View {
    
    var body: some View {
        ZStack {
            Color.appPrimary
                .ignoresSafeArea()
            
            ZStack {
                MenuButton(text: "PRACTICE")
                    .offset(x: 0, y: -350)
            }
            
            HStack(spacing: -10) {
                Button {
                    
                } label: {
                    TableCard(image: "TableOfTwo")
                }
                
                Button {
                    
                } label: {
                    TableCard(image: "TableOfThree")
                }
                
                Button {
                    
                } label: {
                    TableCard(image: "TableOfFour")
                }
            }
        }
    }
}

#Preview {
    PracticeView()
}
