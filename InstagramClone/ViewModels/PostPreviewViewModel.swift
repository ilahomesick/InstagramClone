//
//  PostPreviewViewModel.swift
//  InstagramClone
//
//  Created by ilario salatino on 30.03.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import Foundation
import SwiftUI

class PostPreviewViewModel:ObservableObject{
    
    var postPreview: PostPreview?
    var image: Image
    
    init(image: Image){
        self.image = image
    }
    
    func getImage()->String{
        return postPreview!.imageUrl
    }
    
    func getPreviews()->[PostPreview]{
        return [
            PostPreview(id: 0, imageUrl: "1"),
            PostPreview(id: 1, imageUrl: "2"),
            PostPreview(id: 2, imageUrl: "3"),
            PostPreview(id: 3, imageUrl: "4"),
            PostPreview(id: 4, imageUrl: "5"),
            PostPreview(id: 5, imageUrl: "6"),
            PostPreview(id: 6, imageUrl: "7"),
            PostPreview(id: 7, imageUrl: "8"),
            PostPreview(id: 8, imageUrl: "9"),
            PostPreview(id: 9, imageUrl: "10"),
            PostPreview(id: 10, imageUrl: "11"),
            PostPreview(id: 11, imageUrl: "12"),
            PostPreview(id: 12, imageUrl: "13")
        ]
    }
    
}
