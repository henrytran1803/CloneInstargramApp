//
//  UserShareModel.swift
//  CloneInstargramApp
//
//  Created by Tran Viet Anh on 15/03/2024.
//

import Foundation
import SwiftData


@Model
class ShareUser {
    let id: UUID
    var name: String
    var image:  String
    init(id: UUID = UUID() , name: String = "Anh", image: String = "Face") {
        self.id = id
        self.name = name
        self.image = image
    }
    
    
}
