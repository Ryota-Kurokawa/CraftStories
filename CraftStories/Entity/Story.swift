//
//  Story.swift
//  CraftStories
//
//  Created by 黒川良太 on 2024/09/27.
//

import Foundation

struct Story: Codable, Identifiable {
    let id: UUID
    let title: String
    let description: String
    let label: String
    
    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(UUID.self, forKey: .id)
        self.title = try container.decode(String.self, forKey: .title)
        self.description = try container.decode(String.self, forKey: .description)
        self.label = try container.decode(String.self, forKey: .label)
    }
}

struct SampleStory {
    let id: UUID
    let title: String
    let description: String
    let label: String
    
    init(id: UUID, title: String, description: String, label: String) {
        self.id = id
        self.title = title
        self.description = description
        self.label = label
    }
}
