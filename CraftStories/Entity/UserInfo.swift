//
//  User.swift
//  CraftStories
//
//  Created by 黒川良太 on 2024/09/27.
//

import Foundation

struct UserInfo: Codable, Identifiable {
    let id: UUID
    let name: String
    let email: String
    let iconLink: String
    
    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(UUID.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.email = try container.decode(String.self, forKey: .email)
        self.iconLink = try container.decode(String.self, forKey: .iconLink)
    }
}
