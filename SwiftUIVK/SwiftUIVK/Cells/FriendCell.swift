//
//  FriendCell.swift
//  SwiftUIVK
//
//  Created by Denis Kazarin on 16.11.2021.
//

import SwiftUI

struct FriendCell: View {
    
    let friend: Friend
    
    @Binding public var isPhotoButtonSelected: Bool
    @State private var isAnimationOn: Bool = false
    
    
    var body: some View {
        
        HStack {
            ImageBuilder {
                Image(uiImage: ImageLoader().getImage(friend.photo50))
            }
            .scaleEffect(isAnimationOn ? 1.2 : 1)
            .animation(.spring(response: 0.5, dampingFraction: 0.2, blendDuration: 0.8))
            
            VStack(alignment: .leading) {
                Text("\(friend.firstName) \(friend.lastName)")
                    .font(.subheadline)
                    .foregroundColor(.black)
                Text("id: \(String(friend.id))")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }.padding(.leading, 30)
            
            
            Button {
                self.isAnimationOn = true
                Timer(timeInterval: 0.5, repeats: false) { _ in
                    self.isAnimationOn = false
                }
                Timer(timeInterval: 0.5, repeats: false) { _ in
                    isPhotoButtonSelected = true
                }
   
            } label: {
                Text("Photo")
                    .font(.subheadline)
                    .foregroundColor(.blue)
                    .padding(.leading, 30)
            }
        }
    }
}
