//
//  BookMarkScreen.swift
//  CraftStories
//
//  Created by 黒川良太 on 2024/10/13.
//

import SwiftUI

struct BookMarkScreen: View {
    let controller = StoriesCollectionController()
    @State private var isPresented = false
    @State private var selectedStory: SampleStory?
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    ForEach(controller.stories, id: \.id) { story in
                        SampleCustomCard(story: story)
                            .onTapGesture {
                                isPresented.toggle()
                                selectedStory = story
                                // 1秒後にアラートを閉じる
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                                    isPresented.toggle()
                                }
                            }
                            .scaleEffect(isPresented && selectedStory?.id == story.id ? 1.05 : 1.0)
                            .animation(.spring())
                    }
                }
            }
            .navigationTitle("Bookmarks")
            .toolbarTitleDisplayMode(.inlineLarge)
        }
    }
}

#Preview {
    BookMarkScreen()
}
