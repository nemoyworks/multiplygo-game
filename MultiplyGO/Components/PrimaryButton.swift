//
//  MenuButton.swift
//  MultiplyGO
//
//  Created by Ростислав Гайда on 26.06.2026.
//

import SwiftUI

struct PrimaryButton: View {
    var text: String
    
    var body: some View {
        Image("MenuButton")
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
