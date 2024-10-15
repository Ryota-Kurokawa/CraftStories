//
//  Auth.swift
//  CraftStories
//
//  Created by 黒川良太 on 2024/10/07.
//

import Foundation
import Firebase
import FirebaseAuth

class AuthManager: ObservableObject {
    static let shared = AuthManager()
    let auth = Auth.auth()
    let authRepository = AuthRepository()
    
    // ログイン状態を保持するPublishedプロパティ
    @Published var isLoggedIn: Bool = false
    
    private init() {
        // 初期化時の処理があればここに記述
        checkSession()
    }
    // セッションの確認
    private func checkSession() {
        // firebaseのauthのcurrentUserがnilでなければログイン済みと判断
        if auth.currentUser != nil {
            isLoggedIn = true
        }
    }
}
