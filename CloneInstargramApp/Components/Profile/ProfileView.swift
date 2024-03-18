//
//  ProfileView.swift
//  CloneInstargramApp
//
//  Created by Tran Viet Anh on 15/03/2024.
//

import SwiftUI

struct ProfileView: View {
    @State private var isLogout = false
    var body: some View {
        VStack{
            Button(action: {isLogout = true
            isLoggedInKey = false
            }, label: {
                Text("Đăng xuất")
                
            })
            
        }.fullScreenCover(isPresented: $isLogout){
            SignInView()
        }
    }
}

#Preview {
    ProfileView()
}
