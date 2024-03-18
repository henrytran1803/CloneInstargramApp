//
//  SignInView.swift
//  CloneInstargramApp
//
//  Created by Tran Viet Anh on 15/03/2024.
//

import SwiftUI
import SwiftData

struct SignInView: View {
    @Environment (\.modelContext) var modelContext
    @Query private var users: [User]
    @State private var isShowAlert = false
    @State private var userName = ""
    @State  private var passWord = ""
    @State private var isSignIn = false
    @State private var isLoginFB = false
    @State private var isShowingSignup = false
    var body: some View {
        VStack{
            Spacer()
            Image("TextLogoIG")
                .resizable()
                .frame(width: 200, height: 60)
            Spacer()
            VStack{
                TextField("Số điện thoại, tên người dùng hoặc email", text: $userName)
                    .textFieldStyle(OvalTextFieldStyle())
                    .padding([.leading,.trailing])
                SecureField("Mật khẩu", text: $passWord)
                    .textFieldStyle(OvalTextFieldStyle())
                    .padding([.leading,.trailing])
            }
            Button(action: {checkUser()}, label: {
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
                
                Button(action: {isLoginFB = true}, label: {
                    Text("Đăng nhập bằng face book")
                        .foregroundColor(.blue)
                        .font(.system(size: 13))
                        .bold()
                })
                
            }
            Spacer()
            Divider()
            HStack{
                Text("Bạn chưa có tài khoản ư?")
                    .foregroundColor(.secondary)
                Button(action: {isShowingSignup = true}, label: {
                    Text("Đăng ký.")
                        .bold()
                    
                })
            }.font(.system(size: 15))
            
            
        }.fullScreenCover(isPresented: $isShowingSignup){
            SignupView()
        }
        .fullScreenCover(isPresented: $isSignIn){
            TabCustomView()
        }
        .alert(isPresented: $isShowAlert){
            Alert(title: Text("Error"),message: Text("Sai tên đăng nhập mật khẩu"))
        }
            
    }
    func checkUser(){
        let isUserExists = users.contains { existingUser in
            existingUser.username == userName && existingUser.password == passWord
        }
        if isUserExists {
            isShowAlert = true
        } else {
            isSignIn = true
            isLoggedInKey = true
        }
    }
}

#Preview {
    SignInView()
}
