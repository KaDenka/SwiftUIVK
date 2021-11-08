//
//  GroupsView.swift
//  SwiftUIVK
//
//  Created by Denis Kazarin on 29.10.2021.
//

import SwiftUI
import UIKit

struct GroupsView: View {
    
    @ObservedObject var session = SessionSingletone.shared
    
    private let APIRequest = VKAPIService()
    
  
    
    var body: some View {
        
        NavigationView {
            List(session.groups) { group in
                GroupCell(group: group)
            }.navigationBarTitle(Text("User Groups"))
        }
        
//MARK: Проверка работоспособности запросов
        
        .onAppear {
            APIRequest.groupsListRequest()
            
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
                Image(uiImage: ImageLoader().getImage(group.photo50))
            }
            
            VStack(alignment: .leading) {
                Text("\(group.name)")
                    .font(.subheadline)
                    .foregroundColor(.black)
                Text("\(group.screenName)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text("\(group.itemDescription)")
                    .font(.system(size: 14))
                    .foregroundColor(.black)
                    .lineLimit(2)
            }
            .padding(.leading, 30)
            
        }
    }
}
