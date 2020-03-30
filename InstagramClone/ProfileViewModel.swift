//
//  ProfileViewViewModel.swift
//  InstagramClone
//
//  Created by ilario salatino on 30.03.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import Foundation

class ProfileViewModel{
    
    var profileModel:ProfileModel?
    
    func getImages(){
        let posts = profileModel?.posts
        var images = [String]()
        for post in posts!{
            images.append(post.image)
        }
    }
    
}
