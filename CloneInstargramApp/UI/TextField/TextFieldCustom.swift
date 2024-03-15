//
//  TextFieldCustom.swift
//  CloneInstargramApp
//
//  Created by Tran Viet Anh on 15/03/2024.
//

import Foundation
import SwiftUI


struct OvalTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(10)
            .background(Color("textfielbackgound"))
            .cornerRadius(5)
            .shadow(color: .gray, radius: 1)
    }
}
