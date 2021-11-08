//
//  FriendsView.swift
//  SwiftUIVK
//
//  Created by Denis Kazarin on 29.10.2021.
//

import SwiftUI

struct FriendsView: View {
    
    @ObservedObject var session = SessionSingletone.shared
    
    @State private var shouldShowPhotoCollection = false
    
    private var APIRequest = VKAPIService()
    
    var body: some View {
        
        NavigationView {
            List(session.friends) { friend in
                FriendCell(friend: friend, isPhotoButtonSelected: $shouldShowPhotoCollection)
            }.navigationBarTitle(Text("Friends"))
            
            NavigationLink(destination: PhotoCollectionView(), isActive: $shouldShowPhotoCollection) {
                EmptyView()
            }
        }
        
//MARK: Проверка работоспособности запроса
        
        .onAppear {
          APIRequest.friendsListRequest()
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
    
    @Binding var isPhotoButtonSelected: Bool
    
    var body: some View {
        
        HStack {
            ImageBuilder {
                Image(uiImage: ImageLoader().getImage(friend.photo50))
            }
            
            VStack(alignment: .leading) {
                Text("\(friend.firstName) \(friend.lastName)")
                    .font(.subheadline)
                    .foregroundColor(.black)
                Text("\(friend.id)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }.padding(.leading, 30)
            
            
            Button {
                isPhotoButtonSelected = true
            } label: {
                Text("Photo")
                    .font(.subheadline)
                    .foregroundColor(.blue)
                    .padding(.leading, 30)
                
            }
        }
    }
}
