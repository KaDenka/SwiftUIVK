//
//  ContentView.swift
//  SwiftUIVK
//
//  Created by Denis Kazarin on 25.10.2021.
//

import SwiftUI

struct ContentView: View {
    
@ObservedObject private var session = SessionSingletone.shared
    
    var body: some View {
        NavigationView {
            HStack {
                ServerLoginVKView()
                NavigationLink(destination: MainView(), isActive: $session.logedIn) {
                    EmptyView()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
