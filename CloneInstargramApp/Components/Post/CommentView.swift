//
//  CommentView.swift
//  CloneInstargramApp
//
//  Created by Tran Viet Anh on 15/03/2024.
//

import SwiftUI

struct CommentView: View {
    @State var comment = ""
    var body: some View {
        VStack{
            Text("Bình luận")
                .bold()
            Divider()
            Spacer()
            TextField("Bình luận cho Trần Việt Anh", text: $comment)
                .overlay(
                    HStack {
                        Spacer()
                        Image(systemName: "gift")
                    }
                    .padding(.trailing, 8),
                    alignment: .trailing
                )
                .padding()
                .background(Color("textfielbackgound"))
                .cornerRadius(10)
                .padding(.leading)
 
        }
    }
}

#Preview {
    CommentView()
}
