//
//  PhotoPickerLineViewModel.swift
//  InstagramClone
//
//  Created by ilario salatino on 05.04.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import Foundation
import SwiftUI

class PhotoPickerLineViewModel:ObservableObject{

    var images: [UploadableImage] = []
   
    init(images: [UploadableImage]){
        self.images = images
    }
   
    func getImage(index: Int)-> Image{
        return images[index].image
    }
}
