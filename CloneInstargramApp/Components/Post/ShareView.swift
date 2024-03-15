//
//  ShareView.swift
//  CloneInstargramApp
//
//  Created by Tran Viet Anh on 15/03/2024.
//

import SwiftUI

struct ShareView: View {
    var body: some View {
        VStack{
            HStack
            {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    VStack{
                        Image(systemName: "bookmark")
                            .foregroundColor(.black)
                        Text("Lưu")
                            .foregroundColor(.secondary)
                            .font(.system(size: 13))
                    }
                }).frame(width: 110, height: 85)
                .background(Color("save"))
                .cornerRadius(15)
                Button(action: {}, label: {
                    VStack{
                        Image(systemName: "arrow.rectanglepath")
                            .foregroundColor(.black)
                        Text("Remix")
                            .foregroundColor(.secondary)
                            .font(.system(size: 13))
                    }
                }).frame(width: 110, height: 85)
                .background(Color("save"))
                .cornerRadius(15)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    VStack{
                        Image(systemName: "square.dashed")
                            .foregroundColor(.black)
                        Text("Thứ tự")
                            .foregroundColor(.secondary)
                            .font(.system(size: 13))
                    }
                }).frame(width: 110, height: 85)
                .background(Color("save"))
                .cornerRadius(15)
                    
            }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                HStack{
                    Image(systemName: "airplane.circle")
                        .foregroundColor(.black)
                    Text("Chúng tôi đã thay đổi vị trí")
                        .foregroundColor(.secondary)
                        .font(.system(size: 13))
                }.padding()
            })
            
            .frame( maxWidth: .infinity)
            .background(Color("save"))
            .cornerRadius(15)
            .padding(.horizontal)
            
            Button(action: {}, label: {
                HStack{
                    Image(systemName: "airplane.circle")
                        .foregroundColor(.black)
                    Text("Chúng tôi đã thay đổi vị trí")
                        .foregroundColor(.secondary)
                        .font(.system(size: 13))
                }.padding()
            })
            
            .frame( maxWidth: .infinity)
            .background(Color("save"))
            .cornerRadius(15)
            .padding(.horizontal)
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                HStack{
                    Image(systemName: "airplane.circle")
                        .foregroundColor(.black)
                    Text("Chúng tôi đã thay đổi vị trí")
                        .foregroundColor(.secondary)
                        .font(.system(size: 13))
                }.padding()
            })
            
            .frame( maxWidth: .infinity)
            .background(Color("save"))
            .cornerRadius(15)
            .padding(.horizontal)
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                HStack{
                    Image(systemName: "airplane.circle")
                        .foregroundColor(.black)
                    Text("Chúng tôi đã thay đổi vị trí")
                        .foregroundColor(.secondary)
                        .font(.system(size: 13))
                }.padding()
            })
            
            .frame( maxWidth: .infinity)
            .background(Color("save"))
            .cornerRadius(15)
            .padding(.horizontal)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                HStack{
                    Image(systemName: "airplane.circle")
                        .foregroundColor(.black)
                    Text("Chúng tôi đã thay đổi vị trí")
                        .foregroundColor(.secondary)
                        .font(.system(size: 13))
                }.padding()
            })
            
            .frame( maxWidth: .infinity)
            .background(Color("save"))
            .cornerRadius(15)
            .padding(.horizontal)
 
            
  
        }
    }
}

#Preview {
    ShareView()
}
