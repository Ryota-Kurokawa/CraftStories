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
    @State var selectedStory: SampleStory = SampleStory(id: UUID(), title: "", description: "", label: "")
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    ForEach(controller.stories, id: \.self) { story in
                        SampleCustomCard(story: story)
                            .onTapGesture {
                                selectedStory = story
                                debugPrint("selectedStory: \(selectedStory)")
                                isPresented.toggle()
                            }
                            .animation(.spring)
                    }
                }
            }
            .navigationTitle("Stories")
            .toolbarTitleDisplayMode(.inlineLarge)
            .navigationDestination(isPresented: $isPresented, destination: {
                StoryDetailScreen(story: selectedStory)
            })
        }
    }
}

#Preview {
    StoriesCollectionScreen()
}
