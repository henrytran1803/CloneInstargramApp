//
//  SignupView.swift
//  CloneInstargramApp
//
//  Created by Tran Viet Anh on 15/03/2024.
//

import SwiftUI

struct SignupView: View {
    @State private var username = ""
    @State private var isNext = false
    var body: some View {
        VStack{
            Text("Tạo tên người dùng")
                .font(.title)
                .bold()
                .padding(.top)
            Text("Chọn tên người dùng cho tài khoản mới. Về sau bạn có thể đổi tên bất kỳ lúc nào.")
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding([.leading, .bottom, .trailing])
            TextField("Tên người dùng", text: $username)
                .textFieldStyle(OvalTextFieldStyle())
                .padding([.leading,.trailing])
            Button(action: {isNext = true}, label: {
                Text("Tiếp")
                    .bold()
                    .font(.system(size: 13))
            }).buttonStyle(ButtonLogin())
                .padding()
            Spacer()
        }
    }
}

#Preview {
    SignupView()
}
