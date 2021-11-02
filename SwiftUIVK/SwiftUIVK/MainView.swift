//
//  MainView.swift
//  SwiftUIVK
//
//  Created by Denis Kazarin on 02.11.2021.
//

import SwiftUI

struct MainView: View {
    var body: some View {
            NavigationView {
                GroupsView()
            }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
