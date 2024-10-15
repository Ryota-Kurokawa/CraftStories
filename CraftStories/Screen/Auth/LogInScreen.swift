//
//  LogInScreen.swift
//  CraftStories
//
//  Created by 黒川良太 on 2024/09/24.
//

import SwiftUI
import Lottie

struct LogInScreen: View {
//    @StateObject private var stateManager = AuthStateManager()
    
    
    var body: some View {
        NavigationStack {
            VStack {
                ZStack {
                    LottieView(filename: "LogIn")
                    LogInPanel()
                }
            }
            .background(
                Color.customBackgroundColor
            )
        }
    }
}

struct LogInPanel: View {
    @ObservedObject private var stateManager = AuthStateManager()
    @State private var typedEmail = ""
    @State private var typedPassword = ""
    
    var body: some View {
        VStack {
            Text("Craft Stories")
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
                .frame(height: 120)
            CustomTextField(typedText: $typedEmail, labelText: "Email")
            CustomTextField(typedText: $typedPassword, labelText: "Password")
            Spacer()
                .frame(height: 32)
            CustomButton(onClick: {sampleFunc()}, label: "LogIn")
                .padding()
            Button("Make An Account!") {
                stateManager.isPresentedMakeAccountButton.toggle()
            }
        }
        .sheet(isPresented: $stateManager.isPresentedMakeAccountButton) {
            SignUpScreen()
                .presentationDetents([.custom(EightTenthsDetent.self)])
                .presentationCornerRadius(160)
        }
        .fullScreenCover(isPresented: $stateManager.isPresentedLoginButton) {
            HomeScreen()
        }
    }
}

extension LogInPanel {
    struct EightTenthsDetent: CustomPresentationDetent {
        static func height(in context: Context) -> CGFloat? {
            return context.maxDetentValue * 0.98
        }
    }
    func sampleFunc() {
        
        stateManager.isPresentedLoginButton.toggle()
    }
}


#Preview("LoginScreen", body: {
    LogInScreen()
})
