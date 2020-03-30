//
//  ProfileModel.swift
//  InstagramClone
//
//  Created by ilario salatino on 30.03.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import Foundation

struct ProfileModel{
    
    var profileImage:String
    var username:String
    var posts: [Post]
    var followers: [String]
    var following: [String]
    
}
