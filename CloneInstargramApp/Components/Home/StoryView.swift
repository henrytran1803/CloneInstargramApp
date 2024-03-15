//
//  StoryView.swift
//  CloneInstargramApp
//
//  Created by Tran Viet Anh on 15/03/2024.
//

import SwiftUI
import SwiftData
struct StoryView: View {
    
    @Query var storys: [Story]
    var body: some View {
        HStack{
            ScrollView{
                ForEach (storys){story in
                    VStack{
                        CircleImage(image: Image(story.image))
                        Text(story.name)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.secondary)
                            .font(.system(size: 12))
                    }
                }
            }
        }
    }
}

#Preview {
    StoryView()
}
