//
//  ContentView.swift
//  SwiftUIVK
//
//  Created by Denis Kazarin on 25.10.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var shouldShowMainView = false
    
    var body: some View {
        NavigationView {
            HStack {
                ServerLoginVKView(userLogIned: $shouldShowMainView)
                NavigationLink(destination: MainView(), isActive: $shouldShowMainView) {
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
