//
//  StoriesCollectionController.swift
//  CraftStories
//
//  Created by 黒川良太 on 2024/10/12.
//

import Foundation

class StoriesCollectionController {
    @Published var stories: [SampleStory] = []
    let repository = StoriesCollectionRepository()
    init() {
        stories = repository.fetchSampleStories()
    }
    
}
