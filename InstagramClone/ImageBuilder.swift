//
//  ImageBuilder.swift
//  InstagramClone
//
//  Created by ilario salatino on 12.05.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

struct ImageBuilder{
    
    static func buildImage(imageData: Any?)->Image?{
        guard let data = imageData as! Data? else{
            return nil
        }
        guard let uiImage = UIImage(data: data) else{
            return nil
        }
        return Image(uiImage: uiImage)
    }
    
}
