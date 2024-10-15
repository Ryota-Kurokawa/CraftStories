//
//  CustomCard.swift
//  CraftStories
//
//  Created by 黒川良太 on 2024/10/12.
//

import SwiftUI

struct CustomCard: View {
    let story: Story
    @State private var isBookmarked: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text(story.title)
                        .font(.title)
                        .fontWeight(.bold)
                        .lineLimit(1)
                        .foregroundColor(.primary)
                    // tagをつける
                    
                    Text(story.description)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .lineLimit(2)
                }
                Spacer()
                VStack {
                    Image(systemName: isBookmarked ? "bookmark.fill" : "bookmark")
                        .font(.title)
                        .frame(width: 20, height: 20)
                        .foregroundColor(isBookmarked ? .yellow : .gray)
                        .scaleEffect(isBookmarked ? 1.0 : 0.75)
                        .animation(.spring(dampingFraction: 0.5))
                        .onTapGesture {
                            isBookmarked.toggle()
                    }
                    labelBar(story.label)
                }
            }
            .padding()
            .background(Color(.secondarySystemBackground))
            .cornerRadius(10)
            .shadow(radius: 5)
            .padding()
            
        }
    }
}


import SwiftUI

struct SampleCustomCard: View {
    let story: SampleStory
    @State private var isBookmarked: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text(story.title)
                        .font(.title)
                        .fontWeight(.bold)
                        .lineLimit(1)
                        .foregroundColor(.primary)
                    // tagをつける
                    
                    Text(story.description)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .lineLimit(2)
                }
                Spacer()
                VStack {
                    Image(systemName: isBookmarked ? "bookmark.fill" : "bookmark")
                        .font(.title)
                        .frame(width: 20, height: 20)
                        .foregroundColor(isBookmarked ? .yellow : .gray)
                        .scaleEffect(isBookmarked ? 1.0 : 0.75)
                        .animation(.spring(dampingFraction: 0.5))
                        .onTapGesture {
                            isBookmarked.toggle()
                    }
                    labelBar(story.label)
                }
            }
            .padding()
            .background(Color(.secondarySystemBackground))
            .cornerRadius(10)
            .shadow(radius: 5)
            .padding()
            
        }
    }
}

#Preview("ShortCard"){
    SampleCustomCard(story: SampleStory(id: UUID(), title: "Title", description: "Description", label: "Swift"))
}
#Preview("LongCard"){
    SampleCustomCard(story: SampleStory(
        id: UUID(),
        title: "TitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitle",
        description: "DescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescription",
        label: "SwiftSwiftSwiftSwiftSwiftSwiftSwiftSwiftSwiftSwiftSwiftSwiftSwiftSwiftSwiftSwiftSwiftSwiftSwiftSwiftSwiftSwiftSwiftSwiftSwiftSwiftSwift"
    ))
}
