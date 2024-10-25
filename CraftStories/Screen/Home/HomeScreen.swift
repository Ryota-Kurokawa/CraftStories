//
//  HomeScreen.swift
//  CraftStories
//
//  Created by 黒川良太 on 2024/10/12.
//

import SwiftUI

struct HomeScreen: View {
    @State var selectedTab: Tab = .storiesCollection
    
    var body: some View {
        TabView(selection: $selectedTab) {
            ForEach(Tab.allCases, id: \.self) { tab in
                switch tab {
                case .storiesCollection:
                    StoriesCollectionScreen()
                        .tag(Tab.storiesCollection)
                        .tabItem {
                            Label("Stories Collection", systemImage: "book")
                        }
                case .bookmark:
                    BookMarkScreen()
                        .tag(Tab.bookmark)
                        .tabItem {
                            Label("Bookmark", systemImage: "bookmark")
                        }
                case .setting:
                    UserScreen()
                        .tag(Tab.setting)
                        .tabItem {
                            Label("Setting", systemImage: "gear")
                        }
                }
            }
        }
        .animation(.easeInOut, value: selectedTab)
    }
}

extension HomeScreen {
    enum Tab: Hashable, CaseIterable {
        case storiesCollection
        case bookmark
        case setting
    }
}

#Preview {
    HomeScreen()
}
