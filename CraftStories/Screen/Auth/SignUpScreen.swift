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
        ScrollView {
            ZStack {
                LottieView(filename: "SignUp")
                VStack {
                    Spacer()
                        .frame(height: 40)
                    SignUpPanel()
                }
            }
        }
        .ignoresSafeArea(.keyboard, edges: .all)
        .background(Color.customBackgroundColor)
    }
}

struct SignUpPanel: View {
    
    private let authViewController = AuthViewController()
    @ObservedObject private var authStateManager = AuthStateManager()
    @State private var typedEmail = ""
    @State private var typedPassword = ""
    @State private var typedConfirmPassword = ""
    
    var body: some View {
        VStack {
            Text("Sign Up")
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
                .frame(height: 120)
            CustomTextField(typedText: $typedEmail, labelText: "Email")
            CustomTextField(typedText: $typedPassword, labelText: "Password")
            CustomTextField(typedText: $typedConfirmPassword, labelText: "Confirm Password")
            Spacer()
                .frame(height: 32)
            CustomButton(onClick: {
                Task {
                    do{
                        try await authViewController.signUp(mail: typedEmail, password: typedPassword)
                        AuthManager.shared.isLoggedIn.toggle()
                        debugPrint(AuthManager.shared.isLoggedIn)
                    }
                }
            }, label: "Sign Up")
            .padding()
        }
    }
}



#Preview {
    SignUpScreen()
}

#Preview {
    SignUpPanel()
}
