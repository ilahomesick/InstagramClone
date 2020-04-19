//
//  UploadablePhoto.swift
//  InstagramClone
//
//  Created by ilario salatino on 19.04.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import Foundation
import SwiftUI
import UIKit

class UploadableImage
{

var image: Image
var uiImage: UIImage

init(image:UIImage){
    self.uiImage = image
    self.image = Image(uiImage:image)
}

}
