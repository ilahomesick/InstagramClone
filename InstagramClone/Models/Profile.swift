//
//  ProfileModel.swift
//  InstagramClone
//
//  Created by ilario salatino on 30.03.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import Foundation
import SwiftUI

class Profile{
    
    var profileImage:String?
    lazy var username:String = ""
    lazy var posts: [Post] = []
    var followers: [String]?
    var following: [String]?
    
    init(username: String){
        self.username = username
        self.retrievePosts()
    }
    
    func retrievePosts(){
        Network.shared.apollo.fetch(query: RetrievePostQuery(username: self.username)){ result in
            switch result {
            // In case of success
            case .success(let graphQLResult):
                // We try to parse our result
                // but in case of any GraphQL errors we present that message
                self.posts = self.createPosts(posts:graphQLResult.data!.post)
            // In case of failure, we present that message
            case .failure(let error):
                // Network or response format errors
                print()
            }
            
        }
    }
    
    func createPosts(posts: [RetrievePostQuery.Data.Post])->[Post]{
        var postList: [Post] = []
        posts.forEach({ post in
            postList.append(Post(post:post, image: Image("ic_logo")))
        })
        return postList
    }
    
    
}
