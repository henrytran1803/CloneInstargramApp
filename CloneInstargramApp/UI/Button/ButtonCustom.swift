//
//  ButtonCustom.swift
//  CloneInstargramApp
//
//  Created by Tran Viet Anh on 15/03/2024.
//

import Foundation
import SwiftUI


struct ButtonLogin: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(maxWidth: .infinity)
            .background(configuration.isPressed ? Color("buttonclick") : Color("button"))
            .foregroundStyle(.white)
            .cornerRadius(10)
        
    }

}
