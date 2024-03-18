//
//  SignupView.swift
//  CloneInstargramApp
//
//  Created by Tran Viet Anh on 15/03/2024.
//

import SwiftUI
import SwiftData

struct SignupView: View {
    @State private var userName = ""
    @State private var isNext = false
    @State private var isShowAlert = false
    @Environment (\.modelContext) var modelContext
    @Query private var users : [User]
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
            TextField("Tên người dùng", text: $userName)
                .textFieldStyle(OvalTextFieldStyle())
                .padding([.leading,.trailing])
            Button(action: {checkUser()}, label: {
                Text("Tiếp")
                    .bold()
                    .font(.system(size: 13))
            }).buttonStyle(ButtonLogin())
                .padding()
            Spacer()
        }.alert(isPresented: $isShowAlert) {
            Alert(title: Text("Thông báo"), message: Text("Tên tài khoản đã tồn tại"), dismissButton: .default(Text("OK")))
        }.sheet(isPresented: $isNext){
            PasswordSignUpView(username: userName)
        }
    }
    func checkUser(){
        let newUser = User(username: userName)
        let isUserExists = users.contains { existingUser in
            existingUser.username == newUser.username
        }
        if isUserExists {
            isShowAlert = true
        } else {
            isNext = true
        }
    }

    
}

#Preview {
    SignupView()
}
