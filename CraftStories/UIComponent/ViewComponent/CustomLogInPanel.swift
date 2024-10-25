////
////  CustomLogInPanel.swift
////  CraftStories
////
////  Created by 黒川良太 on 2024/09/26.
////
//
//import SwiftUI
//
//struct LogInCardWithOSS: View {
//    let serviceName: String
//    let backgroundColor: Color
//    let fontColor: Color
//    let iconName: String
//    let iconForegroundColor: Color
//    
//    
//    var body: some View {
//        HStack {
//            if let image = UIImage(named: iconName) {
//                Image(uiImage: image)
//                    .resizable()
//                    .foregroundColor(iconForegroundColor)
//                    .frame(width: 24, height: 24)
//            }
//            Text("LogIn With \(serviceName)")
//                .foregroundColor(fontColor)
//                .font(.headline)
//                .fontWeight(.bold)
//                .padding()
//        }
//        .padding()
//        .frame(maxWidth: .infinity, maxHeight: 60)
//        .background(backgroundColor)
//        .background(.ultraThinMaterial)
//        .cornerRadius(10)
//        .shadow(radius: 5)
//    }
//}
//
//#Preview {
//    LogInCardWithOSS(serviceName: "Google", backgroundColor: .white, fontColor: .black, iconName: "Google", iconForegroundColor: .black)
//}

import SwiftUI

struct GoogleLoginCard: View {
    var body: some View {
        VStack {
            Text("Welcome to CraftStories")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 20)
            
            Button(action: {
                // Googleログインの処理
                handleGoogleLogin()
            }) {
                HStack {
                    Image(uiImage: UIImage(named: "Google")!)
                        .foregroundColor(.white)
                    
                    Text("Sign in with Google")
                        .font(.headline)
                        .foregroundColor(.white)
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.red)
                .cornerRadius(10)
            }
            .padding(.horizontal, 20)
            .shadow(radius: 5)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(15)
        .shadow(radius: 10)
    }
    
    // Googleログイン処理をここで実装
    func handleGoogleLogin() {
        print("Googleログイン処理を実行")
        // 実際のGoogleログインAPIを呼び出す処理をここに追加
    }
}

struct GoogleLoginCard_Previews: PreviewProvider {
    static var previews: some View {
        GoogleLoginCard()
    }
}
