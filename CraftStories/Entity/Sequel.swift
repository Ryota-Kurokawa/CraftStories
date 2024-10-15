//
//  Sequel.swift
//  CraftStories
//
//  Created by 黒川良太 on 2024/09/27.
//

import Foundation

struct Sequel: Codable, Identifiable {
    let id: UUID
    let title: String
    let description: String
    let parentId: UUID
    
    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(UUID.self, forKey: .id)
        self.title = try container.decode(String.self, forKey: .title)
        self.description = try container.decode(String.self, forKey: .description)
        self.parentId = try container.decode(UUID.self, forKey: .parentId)
    }
}
