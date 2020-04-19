//
//  SelectedImage.swift
//  InstagramClone
//
//  Created by ilario salatino on 16.04.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import Foundation
import SwiftUI

class SelectedImage: ObservableObject{
    @Published var image: UploadableImage
    
    init(selectedImage: UIImage){
        self.image = UploadableImage(image: selectedImage)
    }
}
