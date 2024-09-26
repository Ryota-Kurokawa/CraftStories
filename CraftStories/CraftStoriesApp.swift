//
//  CraftStoriesApp.swift
//  CraftStories
//
//  Created by 黒川良太 on 2024/09/08.
//

import SwiftUI

@main
struct CraftStoriesApp: App {
    // Firebaseの使用
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            LogInScreen()
        }
    }
}
