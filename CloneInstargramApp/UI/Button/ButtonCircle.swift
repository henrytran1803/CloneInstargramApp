//
//  ButtonCircle.swift
//  CloneInstargramApp
//
//  Created by Tran Viet Anh on 15/03/2024.
//

import Foundation
import SwiftUI
struct ButtonCircle: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(configuration.isPressed ? Color("save") : Color.secondary)
    
            .foregroundStyle(.white)
            .cornerRadius(50)
        
    }

}
