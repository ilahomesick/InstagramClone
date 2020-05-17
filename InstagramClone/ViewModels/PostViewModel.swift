//
//  PostViewMode.swift
//  InstagramClone
//
//  Created by ilario salatino on 31.03.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import Foundation
import SwiftUI

class PostViewModel{
    var post:Post
    
    init(post:Post){
        self.post = post
    }
    
    func getImage()->Image?{
        return post.image
    }
    
    func getUser()-> String{
        return post.username
    }
    
    func getDescription()->String{
        return post.description
    }
    
    func getDate()->String{
        return post.date
    }
    
}
