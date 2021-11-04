//
//  Friend.swift
//  SwiftUIVK
//
//  Created by Denis Kazarin on 29.10.2021.
//

import Foundation
import UIKit

class Friend: Identifiable {
    var firstName: String
    var lastName: String
    var id: Int
    var photo50: UIImage
    
    init(firstName: String, lastName: String, id: Int, photo50: UIImage) {
        self.firstName = firstName
        self.lastName = lastName
        self.id = id
        self.photo50 = photo50
    }
}
