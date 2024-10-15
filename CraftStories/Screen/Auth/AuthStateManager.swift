//
//  AuthStateManager.swift
//  CraftStories
//
//  Created by 黒川良太 on 2024/10/11.
//

import Foundation

class AuthStateManager: ObservableObject {
    @Published var isPresentedMakeAccountButton: Bool = false
    @Published var isPresentedLoginButton: Bool = false
    @Published var isShownErrorDialog: Bool = false
    
    func showMakeAccountButton() {
        isPresentedMakeAccountButton = true
    }
    
    func showStoriesCollection() {
        isPresentedLoginButton = true
    }
}
