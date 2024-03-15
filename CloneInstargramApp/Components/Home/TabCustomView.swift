//
//  TabView.swift
//  CloneInstargramApp
//
//  Created by Tran Viet Anh on 15/03/2024.
//

import SwiftUI

struct TabCustomView: View {

    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("", systemImage: "house" )
                }

            SearchView()
                .tabItem {
                    Label("", systemImage: "magnifyingglass")
                }
            AddStoryView()
                .tabItem {
                    Label("", systemImage: "plus.app")
                }
            
            ReelView()
                .tabItem {
                    Label("", systemImage: "play.square")
                }
            ProfileView()
                .tabItem {
                    Label("", systemImage: "circle")
                }
        }.background(Color.red)
    }
}
#Preview {
    TabCustomView()
}
