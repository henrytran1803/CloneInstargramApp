//
//  PasswordSignUpView.swift
//  CloneInstargramApp
//
//  Created by Tran Viet Anh on 15/03/2024.
//

import SwiftUI

struct PasswordSignUpView: View {
    @State private var username = ""
    @State private var isNext = false
    @State private var isSavePass = false
    var body: some View {
        VStack{
            Text("Tạo mật khẩu")
                .font(.title)
                .bold()
                .padding(.top)
            Text("Chúng tôi sẽ ghi nhớ mật khẩu để bạn không cần nhập lại trên các thiết bị.")
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding([.leading, .bottom, .trailing])
            TextField("Mật khẩu", text: $username)
                .textFieldStyle(OvalTextFieldStyle())
                .padding([.leading,.trailing])
            HStack{
                Button(action: {isSavePass.toggle()}, label: {
                    Image(systemName: isSavePass ?  "checkmark.square.fill" :  "checkmark.square")
                })
                Text("Lưu mật khẩu")
                Spacer()
            }.padding(.leading)
            Button(action: {isNext = true}, label: {
                Text("Tiếp")
                    .bold()
                    .font(.system(size: 13))
            }).buttonStyle(ButtonLogin())
                .padding(.horizontal)
            Spacer()
        }
    }
}

#Preview {
    PasswordSignUpView()
}
