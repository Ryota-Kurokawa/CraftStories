//
//  CustomButton.swift
//  CraftStories
//
//  Created by 黒川良太 on 2024/09/26.
//

import SwiftUI

struct CustomButton: View {
    let onClick: () -> Void
    let label: String
    
    var body: some View {
        HStack {
            Spacer()
            Button(label) {
                onClick()
            }
            .buttonStyle(StylishButton())
            Spacer()
        }
    }
}

struct StylishButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        GeometryReader { geometry in
            HStack {
                Spacer() // 左側のスペース
                configuration.label
                    .padding()
                    .frame(width: geometry.size.width * 0.6) // 横幅を親ビューの60%に設定
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(configuration.isPressed ? Color.gray : Color.blue)
                    )
                    .foregroundColor(.white)
                    .shadow(radius: 5)
                    .scaleEffect(configuration.isPressed ? 0.9 : 1)
                Spacer() // 右側のスペース
            }
        }
        .frame(height: 50) // 親ビューが空間を適切に確保するために高さも指定
    }
}


#Preview {
    CustomButton(onClick: {debugPrint("sample")}, label: "sample")
}
