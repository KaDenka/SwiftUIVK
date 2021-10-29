//
//  FriendsView.swift
//  SwiftUIVK
//
//  Created by Denis Kazarin on 29.10.2021.
//

import SwiftUI

struct FriendsView: View {
    @State var friends: [Friend] = SessionSingletone.shared.friends
    var body: some View {
        
        NavigationView {
            List(friends) { friend in
                FriendCell(friend: friend)
            }.navigationBarTitle(Text("Friends"))
        }
        
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
    }
}


struct FriendCell: View {
    let friend: Friend
    var body: some View {
        HStack {
            ImageBuilder {
                Image(uiImage: friend.photo50)
            }
            
            VStack(alignment: .leading) {
                Text("\(friend.firstName) \(friend.lastName)")
                    .font(.subheadline)
                    .foregroundColor(.black)
                Text("\(friend.id)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }.padding(.leading, 30)
        }
    }
}
