//
//  AuthViewController.swift
//  CraftStories
//
//  Created by 黒川良太 on 2024/10/16.
//

import Foundation

class AuthViewController {
    private let authService = AuthService()
    private let authStateManager = AuthStateManager()
    
    func logIn(mail: String, password: String) throws {
        authService.logIn(mail: mail, password: password)
    }
    
    func signUp(mail: String, password: String) async throws {
        await authService.signUp(mail: mail, password: password)
    }
}
