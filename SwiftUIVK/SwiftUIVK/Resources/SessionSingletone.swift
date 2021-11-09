//
//  SessionSingletone.swift
//  SwiftUIVK
//
//  Created by Denis Kazarin on 29.10.2021.
//

import Foundation
import UIKit
import SwiftUI
import Combine

final class SessionSingletone: ObservableObject {
    
    static let shared = SessionSingletone()
    
    private init() {}
    
    @Published var friends = [Friend]()
    @Published var groups = [Group]()
    @Published var photos = [Photo]()
    @Published var news = [ResponseItem]()
    @Published var token: String = ""
    @Published var userID: String = ""
    @Published var logedIn: Bool = false
   
}
