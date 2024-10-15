//
//  AuthService.swift
//  CraftStories
//
//  Created by 黒川良太 on 2024/10/16.
//

import Foundation

protocol AuthServiceProtocol {
    func logIn(mail: String, password: String)
    func signUp(mail: String, password: String) async
}

class AuthService: AuthServiceProtocol {
    private let repository = AuthRepository()
    
    func logIn(mail: String, password: String) {
        repository.LogInWithMail(mail: mail, password: password)
    }
    
    func signUp(mail: String, password: String) async {
        await repository.SignUpWithMail(mail: mail, password: password)
    }
}
