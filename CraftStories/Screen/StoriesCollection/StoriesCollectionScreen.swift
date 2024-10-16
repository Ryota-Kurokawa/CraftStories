//
//  StoriesCollection.swift
//  CraftStories
//
//  Created by 黒川良太 on 2024/09/26.
//

import SwiftUI

struct StoriesCollectionScreen: View {
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
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                                    isPresented.toggle()
                                }
                            }
                        // 長押しで中の内容が見れる
                            .onLongPressGesture {
                                isPresented.toggle()
                                selectedStory = story
                            }
                            .contextMenu {
                                Button(action: {
                                    isPresented.toggle()
                                    selectedStory = story
                                }) {
                                    Label("Bookmark", systemImage: "bookmark")
                                }
                            }
                            .scaleEffect(isPresented && selectedStory?.id == story.id ? 1.05 : 1.0)
                            .animation(.spring())
                    }
                    .navigationTitle("Stories")
                    .toolbarTitleDisplayMode(.inlineLarge)
                }
            }
        }
    }
}

#Preview {
    StoriesCollectionScreen()
}
