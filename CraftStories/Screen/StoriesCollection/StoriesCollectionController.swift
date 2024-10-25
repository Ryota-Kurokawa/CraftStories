//
//  StoriesCollectionController.swift
//  CraftStories
//
//  Created by 黒川良太 on 2024/10/12.
//

import Foundation

class StoriesCollectionController {
    @Published var stories: [SampleStory] = [
        SampleStory(id: UUID(), title: "Story 1", description: "これは初めの物語です。\n this is the first story", label: "First"),
        SampleStory(id: UUID(), title: "Story 2", description: "ながい物語なんだぁぁぁぁぁぁぁぁぁぁぁ！！ながい物語なんだぁぁぁぁぁぁぁぁぁぁぁ！！ながい物語なんだぁぁぁぁぁぁぁぁぁぁぁ！！ながい物語なんだぁぁぁぁぁぁぁぁぁぁぁ！！ながい物語なんだぁぁぁぁぁぁぁぁぁぁぁ！！ながい物語なんだぁぁぁぁぁぁぁぁぁぁぁ！！ながい物語なんだぁぁぁぁぁぁぁぁぁぁぁ！！ながい物語なんだぁぁぁぁぁぁぁぁぁぁぁ！！ながい物語なんだぁぁぁぁぁぁぁぁぁぁぁ！！ながい物語なんだぁぁぁぁぁぁぁぁぁぁぁ！！ながい物語なんだぁぁぁぁぁぁぁぁぁぁぁ！！ながい物語なんだぁぁぁぁぁぁぁぁぁぁぁ！！ながい物語なんだぁぁぁぁぁぁぁぁぁぁぁ！！ながい物語なんだぁぁぁぁぁぁぁぁぁぁぁ！！ながい物語なんだぁぁぁぁぁぁぁぁぁぁぁ！！ながい物語なんだぁぁぁぁぁぁぁぁぁぁぁ！！ながい物語なんだぁぁぁぁぁぁぁぁぁぁぁ！！ながい物語なんだぁぁぁぁぁぁぁぁぁぁぁ！！ながい物語なんだぁぁぁぁぁぁぁぁぁぁぁ！！ながい物語なんだぁぁぁぁぁぁぁぁぁぁぁ！！ながい物語なんだぁぁぁぁぁぁぁぁぁぁぁ！！ながい物語なんだぁぁぁぁぁぁぁぁぁぁぁ！！ながい物語なんだぁぁぁぁぁぁぁぁぁぁぁ！！ながい物語なんだぁぁぁぁぁぁぁぁぁぁぁ！！ながい物語なんだぁぁぁぁぁぁぁぁぁぁぁ！！ながい物語なんだぁぁぁぁぁぁぁぁぁぁぁ！！ながい物語なんだぁぁぁぁぁぁぁぁぁぁぁ！！ながい物語なんだぁぁぁぁぁぁぁぁぁぁぁ！！ながい物語なんだぁぁぁぁぁぁぁぁぁぁぁ！！ながい物語なんだぁぁぁぁぁぁぁぁぁぁぁ！！", label: "Second"),
        SampleStory(id: UUID(), title: "Story 3", description: "This is the third storyThis is the third storyThis is the third storyThis is the third storyThis is the third storyThis is the third storyThis is the third storyThis is the third storyThis is the third storyThis is the third storyThis is the third storyThis is the third storyThis is the third storyThis is the third story", label: "Third"),
        SampleStory(id: UUID(), title: "Story 100", description: "ながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあ", label: "First"),
        SampleStory(id: UUID(), title: "Story 200", description: "ながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあ", label: "Second"),
        SampleStory(id: UUID(), title: "Story 300", description: "ながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあ", label: "Third"),
        SampleStory(id: UUID(), title: "Story 400", description: "ながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあ", label: "First"),
        SampleStory(id: UUID(), title: "Story 500", description: "ながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあながいながいながいあ", label: "Second"),
        SampleStory(id: UUID(), title: "Story 3", description: "This is the third story", label: "Third"),
        SampleStory(id: UUID(), title: "Story 1", description: "This is the first story", label: "First"),
        SampleStory(id: UUID(), title: "Story 2", description: "This is the second story", label: "Second"),
        SampleStory(id: UUID(), title: "Story 3", description: "This is the third story", label: "Third"),
        SampleStory(id: UUID(), title: "Story 1", description: "This is the first story", label: "First"),
        SampleStory(id: UUID(), title: "Story 2", description: "This is the second story", label: "Second"),
        SampleStory(id: UUID(), title: "Story 3", description: "This is the third story", label: "Third"),
        SampleStory(id: UUID(), title: "Story 1", description: "This is the first story", label: "First"),
        SampleStory(id: UUID(), title: "Story 2", description: "This is the second story", label: "Second"),
        SampleStory(id: UUID(), title: "Story 3", description: "This is the third story", label: "Third"),
        SampleStory(id: UUID(), title: "Story 1", description: "This is the first story", label: "First"),
        SampleStory(id: UUID(), title: "Story 2", description: "This is the second story", label: "Second"),
        SampleStory(id: UUID(), title: "Story 3", description: "This is the third story", label: "Third"),
        SampleStory(id: UUID(), title: "Story 1", description: "This is the first story", label: "First"),
        SampleStory(id: UUID(), title: "Story 2", description: "This is the second story", label: "Second"),
        SampleStory(id: UUID(), title: "Story 3", description: "This is the third story", label: "Third"),
        SampleStory(id: UUID(), title: "Story 1", description: "This is the first story", label: "First"),
        SampleStory(id: UUID(), title: "Story 2", description: "This is the second story", label: "Second"),
        SampleStory(id: UUID(), title: "Story 3", description: "This is the third story", label: "Third"),
        SampleStory(id: UUID(), title: "Story 1", description: "This is the first story", label: "First"),
        SampleStory(id: UUID(), title: "Story 2", description: "This is the second story", label: "Second"),
        SampleStory(id: UUID(), title: "Story 3", description: "This is the third story", label: "Third"),
        SampleStory(id: UUID(), title: "Story 1", description: "This is the first story", label: "First"),
        SampleStory(id: UUID(), title: "Story 2", description: "This is the second story", label: "Second"),
        SampleStory(id: UUID(), title: "Story 3", description: "This is the third story", label: "Third"),
        SampleStory(id: UUID(), title: "Story 1", description: "This is the first story", label: "First"),
        SampleStory(id: UUID(), title: "Story 2", description: "This is the second story", label: "Second"),
        SampleStory(id: UUID(), title: "Story 3", description: "This is the third story", label: "Third"),
        SampleStory(id: UUID(), title: "Story 1", description: "This is the first story", label: "First"),
        SampleStory(id: UUID(), title: "Story 2", description: "This is the second story", label: "Second"),
        SampleStory(id: UUID(), title: "Story 3", description: "This is the third story", label: "Third"),
        SampleStory(id: UUID(), title: "Story 1", description: "This is the first story", label: "First"),
        SampleStory(id: UUID(), title: "Story 2", description: "This is the second story", label: "Second"),
        SampleStory(id: UUID(), title: "Story 3", description: "This is the third story", label: "Third"),
        SampleStory(id: UUID(), title: "Story 1", description: "This is the first story", label: "First"),
        SampleStory(id: UUID(), title: "Story 2", description: "This is the second story", label: "Second"),
        SampleStory(id: UUID(), title: "Story 3", description: "This is the third story", label: "Third"),
        SampleStory(id: UUID(), title: "Story 1", description: "This is the first story", label: "First"),
        SampleStory(id: UUID(), title: "Story 2", description: "This is the second story", label: "Second"),
        SampleStory(id: UUID(), title: "Story 3", description: "This is the third story", label: "Third"),
    ]
    let repository = StoriesCollectionRepository()
}

// MARL: - 400文字が限界
