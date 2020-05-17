//
//  Post.swift
//  InstagramClone
//
//  Created by ilario salatino on 30.03.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import Foundation
import SwiftUI

class Post{
    
    var image: Image?
    var description: String
    var comments: [Comment]?
    var date: String
    var username: String
    
    init(post:RetrievePostQuery.Data.Post, image: Image){
        self.description = post.description
        self.date = post.date
        self.username = post.user
        self.image = image
        
    }
    
    func retrieveImage(key:String){
        ImageDownload().downloadImage(key: key, completion: { result, error in
            if (error == nil){
                self.image = ImageBuilder.buildImage(imageData: result)
            }else{
                print(error)
            }
        })
        
    }
    
    
    
}
