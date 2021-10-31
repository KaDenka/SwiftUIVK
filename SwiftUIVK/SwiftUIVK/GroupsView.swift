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
            ImageBuilder {
                Image(uiImage: group.groupIcon)
            }
            
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
