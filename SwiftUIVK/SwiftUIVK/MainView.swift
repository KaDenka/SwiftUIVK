//
//  MainView.swift
//  SwiftUIVK
//
//  Created by Denis Kazarin on 02.11.2021.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            FriendsView()
                .padding()
                .tabItem {
                    Label("Friends", systemImage: "person.3")
                }
                .tag(1)
            
            GroupsView()
                .padding()
                .tabItem {
                    Label("Groups", systemImage: "squares.below.rectangle")
                }
                .tag(2)
            
            NewsView()
                .padding()
                .tabItem {
                    Label("News", systemImage: "list.bullet")
                        .tag(3)
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
