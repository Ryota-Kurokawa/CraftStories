//
//  LogInScreen.swift
//  CraftStories
//
//  Created by 黒川良太 on 2024/09/24.
//

import SwiftUI
import ColorfulX
import Lottie

struct LogInScreen: View {
    @State private var colors: [Color] = [.purple, .cyan, .pink]
    @State private var noise: Double = 0.25
    @State private var speed: Double = 0.5
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.gray)
                    .opacity(0.2)
                    .ignoresSafeArea()
                LottieView(filename: "LogIn")
                LogInPanel()
            }
        }
    }
}

struct LogInPanel: View {
    var body: some View {
        VStack {
            Text("Log In")
                .font(.largeTitle)
                .fontWeight(.heavy)
            //                .foregroundStyle(.white)
            Spacer()
                .frame(height: 120)
            CustomTextField(labelText: "Email")
            CustomTextField(labelText: "Password")
            Spacer()
                .frame(height: 32)
            CustomButton(onClick: {sampleFunc()}, label: "LogIn")
                .padding()
            NavigationLink(destination: SignUpScreen()) {
                Text("Welcome to CraftStories")
            }
        }
    }
    
    func sampleFunc() {
        debugPrint("")
    }
}



#Preview {
    LogInScreen()
}

