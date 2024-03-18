//
//  IsLoginModel.swift
//  CloneInstargramApp
//
//  Created by Tran Viet Anh on 18/03/2024.
//

import SwiftUI

let usernameKey = "username"

struct LoginManager {
    static func saveUsername(_ username: String) {
        UserDefaults.standard.set(username, forKey: usernameKey)
    }
    
    static func getSavedUsername() -> String? {
        return UserDefaults.standard.string(forKey: usernameKey)
    }
    
    static func clearSavedUsername() {
        UserDefaults.standard.removeObject(forKey: usernameKey)
    }
}

//
//LoginManager.saveUsername("username_here")
//
//// Lấy tên người dùng khi cần sử dụng
//if let savedUsername = LoginManager.getSavedUsername() {
//    print("Saved username: \(savedUsername)")
//} else {
//    print("No saved username.")
//}
//
//// Xóa tên người dùng khi cần thiết
//LoginManager.clearSavedUsername()
//
