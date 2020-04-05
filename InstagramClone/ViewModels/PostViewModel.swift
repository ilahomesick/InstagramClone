//
//  PostViewMode.swift
//  InstagramClone
//
//  Created by ilario salatino on 31.03.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import Foundation

class PostViewModel{
    var post:Post
    
    init(post:Post){
        self.post = post
    }
    
    func getImage()->String{
        return post.image
    }
    
    func getUser()-> String{
        return post.username
    }
}
