//
//  ContentView.swift
//  CraftStories
//
//  Created by 黒川良太 on 2024/09/08.
//

import SwiftUI
import ColorfulX

struct ContentView: View {
    @State private var colors: [Color] = [.blue, .purple, .pink]
    @State private var noise: Double = 0.25
    @State private var speed: Double = 0.25
    
    var body: some View {
        ColorfulView(color: $colors, noise: $noise, transitionSpeed: $speed)
            .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}

