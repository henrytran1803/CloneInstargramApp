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
            .background(Color("button"))
            .foregroundStyle(.white)
            .cornerRadius(10)
    }

}
