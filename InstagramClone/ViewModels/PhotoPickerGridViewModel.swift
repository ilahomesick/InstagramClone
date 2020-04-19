//
//  PhotoPickerGridViewModel.swift
//  InstagramClone
//
//  Created by ilario salatino on 05.04.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import Foundation
import SwiftUI

class PhotoPickerGridViewModel:ObservableObject{
    let images: [UploadableImage]
    let lines: [[UploadableImage]]
    
    init(images: [UploadableImage]){
        self.images = images
        self.lines = images.chunked(into: 4)
        //self.selectedImage = Imageimages[0].uiImage
    }
    
    
    
    
}
