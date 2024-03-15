//
//  ShareFriendView.swift
//  CloneInstargramApp
//
//  Created by Tran Viet Anh on 15/03/2024.
//

struct Share : Identifiable{
    let id: UUID
    var name: String
    var image:String
    init(id: UUID = UUID(), name: String="tac Vu", image: String = "paperplane") {
        self.id = id
        self.name = name
        self.image = image
    }
    
}

import SwiftUI
import SwiftData
let layout = [
    GridItem(.fixed(40)),
    GridItem(.fixed(40)),
    GridItem(.fixed(40)),
    GridItem(.fixed(40))
]
struct ShareFriendView: View {
    @Query private var userShares :[ShareUser]
    @State private var shares: [Share] = [.init(),.init(),.init(),.init(),.init(),.init(),.init(),.init(),.init(),.init()]
    var body: some View {
        ScrollView {
              LazyVGrid(columns: layout) {
                  ForEach(userShares) { user in
                      CircleImage(image: Image(user.image))
                  }
              }
          }
        ScrollView(.horizontal){
            HStack(spacing: 20) {
                ForEach(shares){ share in
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        VStack {
                            Image(systemName: share.image)
                                .padding()
                                .background(Color("save"))
                                .cornerRadius(50)
                            
                            Text(share.name)
                        }
                    })
                }
            }
        }
    }
}

#Preview {
    ShareFriendView()
}
