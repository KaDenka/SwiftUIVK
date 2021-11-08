//
//  ImageLoader.swift
//  SwiftUIVK
//
//  Created by Denis Kazarin on 08.11.2021.
//

import Foundation
import UIKit

class ImageLoader {
    
    func getImage(_ imageURL: String) -> UIImage {
        if let data = try? Data(contentsOf: URL(string: imageURL)!) {
         return UIImage(data: data)!
        } else {
            return UIImage(named: "noImage")!
        }
    }
}
