//
//  PostModel.swift
//  CloneInstargramApp
//
//  Created by Tran Viet Anh on 15/03/2024.
//

import Foundation
import SwiftData


@Model
class Post {
    let id: UUID
    var title: String
    var image: [String]
    var like: [Like]
    var comment: [Comment]
    init(id: UUID = UUID(), title: String, image: [String], like: [Like], comment: [Comment]) {
        self.id = id
        self.title = title
        self.image = image
        self.like = like
        self.comment = comment
    }
    
}


@Model
class Like {
    let id: UUID
    var user: User
    init(id: UUID = UUID(), user: User) {
        self.id = id
        self.user = user
    }
    
}


@Model
class Comment {
    let id: UUID
    var user: User
    var body: String
    init(id: UUID = UUID(), user: User, body: String) {
        self.id = id
        self.user = user
        self.body = body
    }
}
