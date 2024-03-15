//
//  UserData.swift
//  CloneInstargramApp
//
//  Created by Tran Viet Anh on 15/03/2024.
//

import Foundation

import SwiftData

@Model
class User {
    let id: UUID
    @Attribute(.unique) var username: String
    var dateofbirth: Date
    var name: String
    var password: String
    init(id: UUID = UUID(), username: String, dateofbirth: Date = .now, name: String = "", password: String) {
        self.id = id
        self.username = username
        self.dateofbirth = dateofbirth
        self.name = name
        self.password = password
    }
    
}
