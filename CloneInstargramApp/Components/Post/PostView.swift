//
//  PostView.swift
//  CloneInstargramApp
//
//  Created by Tran Viet Anh on 15/03/2024.
//

import SwiftUI

struct PostView: View {
    @State private var images = ["Face", "Face", "Face"]
    @State private var isShowingBottom = false
    @State private var isShowingBottomShare = false
    @State private var isLove = false
    @State private var isMark = false
    @State private var isBubble = false
    @State private var countLive = 0
    var body: some View {
        VStack{
            HStack{
                MiniCircleimage(image: Image("Face"))
                Text("Trần Việt Anh")
                    .bold()
                    .font(.system(size: 15))
                Spacer()
                Button(action: {isShowingBottom = true}, label: {
                    Image(systemName: "ellipsis")
                })
            }.padding(.horizontal)
            TabView {
                ForEach(images, id: \.self) { imageName in
                    Image(imageName)
                        .resizable()
                        .scaledToFill()
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
            .frame(height: 250)
            
            HStack{
                Button(action: {isLove.toggle()}, label: {
                    Image(systemName: isLove ? "heart.fill" : "heart")
                        .foregroundColor(isLove ? Color.red : Color.black)

                })
                Button(action: {isBubble.toggle()}, label: {
                    Image(systemName:isBubble ? "bubble.fill": "bubble")
                })
                Button(action: {isShowingBottomShare = true}, label: {
                    Image(systemName: "paperplane")
                })
                Spacer()
                Button(action: {isMark.toggle()}, label: {
                    Image(systemName: isMark ? "bookmark.fill" : "bookmark")

                })
                
            }.padding(.horizontal)
                .font(.system(size: 25))
            HStack{
                Text("\(countLive) lượt thích")
                    .bold()
                    .font(.system(size: 10))
                Spacer()
            }.padding(.leading)
           
            HStack{
                SuperMiniCircleImage(image: Image("Face"))
                Text("user name nè")
                    .bold()
                    .font(.system(size: 12))
                    .padding(.trailing)
                
                Text("Nội dung bình luận")
                    .font(.system(size: 12))
                Spacer()
            }.padding(.leading)
            
            
            
            
            
            
        }.sheet(isPresented: $isShowingBottom, content: {
            ShareView()
                .presentationDetents([.height(500)])
                .presentationDragIndicator(.visible)
                .presentationCornerRadius(20)
                
        })
        .sheet(isPresented: $isShowingBottomShare, content: {
            ShareFriendView()
                .presentationDetents([.height(500)])
                .presentationDragIndicator(.visible)
                .presentationCornerRadius(20)
                
        })
    }
}

#Preview {
    PostView()
}
