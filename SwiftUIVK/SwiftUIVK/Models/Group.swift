//
//  Group.swift
//  SwiftUIVK
//
//  Created by Denis Kazarin on 29.10.2021.
//

import Foundation
import UIKit

class Group: Identifiable {
    var groupName: String
    var groupDescription: String
    var groupIcon: UIImage
    
    init(groupName: String, groupDescription: String, groupIcon: UIImage) {
        self.groupName = groupName
        self.groupDescription = groupDescription
        self.groupIcon = groupIcon
    }
}
