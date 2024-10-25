//
//  StoryDetailScreen.swift
//  CraftStories
//
//  Created by 黒川良太 on 2024/10/16.
//

import SwiftUI
import UIKit

struct StoryDetailScreen: View {
    let story: SampleStory
    
    
    var body: some View {
        TategakiText(text: """
            \(story.description)
            """)
        .padding(40)
    }
}

extension StoryDetailScreen {
    struct TategakiText: View {
        var text: String
        
        var body: some View {
            Canvas { context, size in
                context.withCGContext(content: { cgContext in
                    draw(context: cgContext, size: size)
                })
            }
        }
        
        func draw(context: CGContext, size: CGSize) {
            context.scaleBy(x: 1, y: -1)
            context.translateBy(x: 0, y: -size.height)
            let font = UIFont(name: "HiraMinProN-W6", size: 25)
            let baseAttributes: [NSAttributedString.Key : Any] = [
                .verticalGlyphForm: true,
                NSAttributedString.Key.font: font!]
            let attributedText = NSMutableAttributedString(string: text , attributes: baseAttributes)
            let setter = CTFramesetterCreateWithAttributedString(attributedText)
            let path = CGPath(rect: CGRect(origin:CGPointZero, size: size), transform: nil)
            let frameAttrs = [
                kCTFrameProgressionAttributeName: CTFrameProgression.rightToLeft.rawValue,
            ]
            let ct = CTFramesetterCreateFrame(setter, CFRangeMake(0, 0), path, frameAttrs as CFDictionary)
            
            CTFrameDraw(ct, context)
        }
    }
}

