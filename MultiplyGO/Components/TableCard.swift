//
//  TablesButtons.swift
//  MultiplyGO
//
//  Created by Ростислав Гайда on 07.07.2026.
//

import SwiftUI

struct TableCard: View {
    var image: String
    
    var body: some View {
        Image(image)
            .resizable()
            .interpolation(.none)
            .scaledToFit()
            .frame(width: 150, height: 150)
            .shadow(radius: 10)
    }
}
