//
//  StartScreen.swift
//  CraftStories
//
//  Created by 黒川良太 on 2024/09/26.
//

import SwiftUI
import ColorfulX
import Lottie

struct SignUpScreen: View {
    @State private var colors: [Color] = [.purple, .cyan, .pink]
    @State private var noise: Double = 0.25
    @State private var speed: Double = 0.5
    
    var body: some View {
        ZStack {
            Color(.gray)
                .opacity(0.2)
                .ignoresSafeArea()
            LottieView(filename: "SignUp")
            SignUpPanel()
        }
    }
}

struct SignUpPanel: View {
    var body: some View {
        VStack {
            Text("Sign Up")
                .font(.largeTitle)
                .fontWeight(.heavy)
            //                .foregroundStyle(.white)
            Spacer()
                .frame(height: 120)
            CustomTextField(labelText: "Email")
            CustomTextField(labelText: "Password")
            CustomTextField(labelText: "Confirm Password")
            Spacer()
                .frame(height: 32)
            CustomButton(onClick: {}, label: "Sign Up")
                .padding()
        }
    }
}



#Preview {
    SignUpScreen()
}

