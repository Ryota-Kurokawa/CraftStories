//
//  CustomTextField.swift
//  CraftStories
//
//  Created by 黒川良太 on 2024/09/26.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var typedText: String
    let labelText: String
    
    var body: some View {
        let bounds = UIScreen.main.bounds
        let width = Int(bounds.width)
        
        HStack(spacing: 12) {
            TextField(text: $typedText) {
                Text(labelText)
            }
            .padding(5)
            .textFieldStyle(.roundedBorder)
        }
        .frame(width: CGFloat(width)*0.8)
        .shadow(radius: 5)
    }
}

