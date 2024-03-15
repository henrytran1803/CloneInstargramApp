//
//  CircleImage.swift
//  CloneInstargramApp
//
//  Created by Tran Viet Anh on 15/03/2024.
//

import SwiftUI

struct CircleImage: View {
    var image: Image

    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)  
            .frame(width: 70, height: 70)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(LinearGradient(gradient: Gradient(colors: [Color.yellow,Color.orange, Color.red, Color.red, Color.pink]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/), lineWidth: 2)
            }
            .shadow(radius: 2)
    }
}

#Preview {
    CircleImage(image: Image("Face") )
}

