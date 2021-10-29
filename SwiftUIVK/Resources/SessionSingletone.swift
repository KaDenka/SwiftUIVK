//
//  SessionSingletone.swift
//  SwiftUIVK
//
//  Created by Denis Kazarin on 29.10.2021.
//

import Foundation
import UIKit

final class SessionSingletone {
    static var shared = SessionSingletone()
    
    private init() {}
    
    var friends = [
        Friend(firstName: "Ksenia", lastName: "Kazarina", id: 22, photo50: UIImage(named: "ksenia")!),
        Friend(firstName: "Dmitry", lastName: "Sorokin", id: 333, photo50: UIImage(named: "dmitry")!)
    ]
    
    var groups = [
        Group(groupName: "NHL", groupDescription: "Open group", groupIcon: UIImage(named: "nhl")!),
        Group(groupName: "Toronto Maple Leafs", groupDescription: "Private group for funs only", groupIcon: UIImage(named: "toronto")!)
    
    ]
    
}
