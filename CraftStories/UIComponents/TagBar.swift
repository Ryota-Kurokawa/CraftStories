//
//  TagBar.swift
//  CraftStories
//
//  Created by 黒川良太 on 2024/10/12.
//

import SwiftUI

struct labelBar: View {
    let label: String
    // 引数の文字を消す方補
    init(_ label: String) {
        self.label = label
    }
    var body: some View {
        HStack {
            Text(label)
                .font(.caption)
                .fontWeight(.bold)
                .frame(width: 100, height: 50)
                .lineLimit(1)
//                .background(.gray.opacity(0.3))
                // バックグラウンドにassetsの中のgradient Imageを使う
                .background(
                    Image("gradient")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 30)
                        .clipped()
                )
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding(.vertical, 5)
        }
    }
}

#Preview("shortLabel") {
    labelBar("Swift")
}

#Preview("longLabel") {
    labelBar("SwiftUI")
}
