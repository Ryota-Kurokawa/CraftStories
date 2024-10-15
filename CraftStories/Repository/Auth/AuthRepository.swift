//
//  AuthRepository.swift
//  CraftStories
//
//  Created by 黒川良太 on 2024/10/07.
//

import Foundation
import FirebaseAuth
import FirebaseCore

protocol AuthRepositoryProtocol {
    
    func LogInWithMail(mail: String, password: String) 
    func SignUpWithMail(mail: String, password: String) async
}

class AuthRepository: AuthRepositoryProtocol {
    let auth = Auth.auth()
    
    func LogInWithMail(mail: String, password: String) {
        auth.signIn(withEmail: mail, password: password) { (result, error) in
            if let error = error {
                print("ログイン失敗: \(error.localizedDescription)")
                return
            }
            print("ログイン成功")
        }
    }
    
    func SignUpWithMail(mail: String, password: String) async {
        auth.createUser(withEmail: mail, password: password) { (result, error) in
            if let error = error {
                print("サインアップ失敗: \(error.localizedDescription)")
                return
            }
            print("サインアップ成功")
        }
    }
}


