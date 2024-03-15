//
//  SignInView.swift
//  CloneInstargramApp
//
//  Created by Tran Viet Anh on 15/03/2024.
//

import SwiftUI

struct SignInView: View {
    
    @State private var userName = ""
    @State  private var passWord = ""
    @State private var isSignIn = false
    var body: some View {
        VStack{
            Image("TextLogoIG")
            Spacer()
            VStack{
                TextField("Số điện thoại, tên người dùng hoặc email", text: $userName)
                    .textFieldStyle(OvalTextFieldStyle())
                    .padding([.leading,.trailing])
                TextField("Mật khẩu", text: $passWord)
                    .textFieldStyle(OvalTextFieldStyle())
                    .padding([.leading,.trailing])
            }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Đăng nhập")
                    .bold()
                    .font(.system(size: 13))
            }).buttonStyle(ButtonLogin())
                .padding()
            
            HStack{
                
                Rectangle()
                    .frame(width: 100, height: 0.5)
                    .foregroundColor(.gray)
                Text("HOẶC")
                    .foregroundColor(.secondary)
                    .font(.system(size: 12))
                Rectangle()
                    .frame(width: 100, height: 0.5)
                    .foregroundColor(.gray)
            }
            HStack{
                Image("Logofb")
                Text("Đăng nhập bằng face book")
                    .foregroundColor(.blue)
                    .font(.system(size: 13))
                    .bold()
            }
            Spacer()
            Divider()
            HStack{
                Text("Bạn chưa có tài khoản ư?")
                    .foregroundColor(.secondary)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Đăng ký.")
                        .bold()
                    
                })
            }
            
            
        }
            
    }
}

#Preview {
    SignInView()
}
