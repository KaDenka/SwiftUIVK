//
//  VKAPIService.swift
//  SwiftUIVK
//
//  Created by Denis Kazarin on 08.11.2021.
//

import Foundation
import Alamofire

class VKAPIService {
    
    private let baseUrl = "https://api.vk.com/"
    private var token = SessionSingletone.shared.token
    private var userID = SessionSingletone.shared.userID
    private var version = "5.131"
    
    func friendsListRequest() {
        let friendsGetUrl = baseUrl + "method/friends.get"
        let parameters: Parameters = [
            "user_id": userID,
            "fields": "photo_50",
            "access_token": token,
            "v": version
        ]
        
        AF.request(friendsGetUrl, method: .get, parameters: parameters).responseData { response in
            
            let jsonDecoder = JSONDecoder()
            
            switch response.result {
            case .success:
                if let data = response.data {
                    do {
                        let friends = try jsonDecoder.decode(FriendsList.self, from: data)
                        SessionSingletone.shared.friends = friends.response.items
                    } catch let error {
                        print(error.localizedDescription)
                        
                    }
                }
                
            case .failure(let error):
                print(error)
                
            }
        }
    }
    
     func groupsListRequest() {
        
        let groupsGetUrl = baseUrl + "method/groups.get"
        let parameters: Parameters = [
            "user_id": userID,
            "extended": "1",
            "fields": "description",
            "access_token": token,
            "v": version
        ]
        
        AF.request(groupsGetUrl, method: .get, parameters: parameters).responseData { response in
            
            let jsonDecoder = JSONDecoder()
            
            switch response.result {
            case .success:
                if let data = response.data {
                    do {
                        let groups = try jsonDecoder.decode(GroupsList.self, from: data)
                        SessionSingletone.shared.groups = groups.response.items
                    } catch let error {
                        print(error.localizedDescription)

                    }
                }

            case .failure(let error):
                print(error)

            }
        }
    }
    
    private func photosCollectionRequest() {
        
    }
    
    private func newsFeedRequest() {
        
    }
}
