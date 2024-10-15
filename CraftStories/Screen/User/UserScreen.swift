//
//  UserScreen.swift
//  CraftStories
//
//  Created by 黒川良太 on 2024/10/12.
//

import SwiftUI

struct UserScreen: View {
    var body: some View {
        VStack {
            Image(systemName: "person.circle")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .padding()
            Text("User Name")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.primary)
            Text("@user_name")
                .font(.subheadline)
                .foregroundColor(.secondary)
                .padding()
            HStack {
                Text("Followers")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Text("Following")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .padding()
        }
    }
}

#Preview {
    UserScreen()
}
