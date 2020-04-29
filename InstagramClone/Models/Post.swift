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
    
    var image: Image = Image("ic_logo")
    var description: String
    var comments: [Comment]?
    var date: String
    var id: Int?
    var username: String
    
    init(post:RetrievePostQuery.Data.Post, image: Image){
        self.description = post.description
        self.date = post.date
        self.username = post.user
        
    }
    
    func retrieveImage(key:String){
        ImageDownload().downloadImage(key: key, completion: { result, error in
            if (error == nil){
                self.image = Image(uiImage: UIImage(data: result as! Data)!)
            }else{
                print(error)
            }
        })
        
    }
    
    
    
}
