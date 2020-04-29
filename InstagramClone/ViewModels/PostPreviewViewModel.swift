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
    
    var post: Post
    
    init(post: Post){
        self.post = post
    }
    
    func getImage()->Image{
        return post.image
    }
    
    func getPreviews()->[Post]{
        return [
        ]
    }
    
}
