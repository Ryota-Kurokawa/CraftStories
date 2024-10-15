//
//  HomeScreen.swift
//  CraftStories
//
//  Created by 黒川良太 on 2024/10/12.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        TabView {
            StoriesCollectionScreen()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            BookMarkScreen()
                .tabItem {
                    Image(systemName: "bookmark")
                    Text("Bookmark")
                }
            UserScreen()
                .tabItem {
                    Image(systemName: "person")
                    Text("User")
                }
        }
    }
}

#Preview {
    HomeScreen()
}
