//
//  GroupsView.swift
//  SwiftUIVK
//
//  Created by Denis Kazarin on 29.10.2021.
//

import SwiftUI

struct GroupsView: View {
    
    @State var groups: [Group] = SessionSingletone.shared.groups
    
    var body: some View {

        NavigationView {
            List(groups) { group in
                GroupCell(group: group)
            }.navigationBarTitle(Text("User Groups"))
        }
    
    }
}

struct GroupsView_Previews: PreviewProvider {
    static var previews: some View {
        GroupsView()
    }
}


struct GroupCell: View {
    let group: Group
    var body: some View {
        HStack {
            Image(uiImage: group.groupIcon)
            .resizable()
            .frame(width: 50, height: 50)
            .modifier(ImageModifier(imageCornerRadius: 40, shadowColor: .black, shadowRadius: 5, x: 3, y: 3))
            
        VStack(alignment: .leading) {
            Text("\(group.groupName)")
                .font(.subheadline)
                .foregroundColor(.black)
            Text("\(group.groupDescription)")
                .font(.subheadline)
                .foregroundColor(.gray)
        }.padding(.leading, 30)
    }
    }
}
