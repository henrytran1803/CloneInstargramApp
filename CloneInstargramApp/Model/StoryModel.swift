//
//  StoryModel.swift
//  CloneInstargramApp
//
//  Created by Tran Viet Anh on 15/03/2024.
//

import Foundation
import SwiftData
import SwiftUI



@Model
class Story {
    let id: UUID
    var name: String
    var image: String
    
    init(id: UUID = UUID(), name: String = "username", image: String ) {
        self.id = id
        self.name = name
        self.image = image
    }
    
}
var mockstory : [Story] = [.init(image:  "Face")]
