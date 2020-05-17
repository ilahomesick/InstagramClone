//
//  TimeLineDetailViewModel.swift
//  InstagramClone
//
//  Created by ilario salatino on 31.03.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import Foundation
import SwiftUI
import Apollo
import Combine

class TimeLineDetailViewModel:ObservableObject{
    @Published var posts: [Post]
    let didChange = PassthroughSubject<TimeLineDetailViewModel?, Never>()
    
    init(){
        self.posts = []
        Network.shared.apollo.fetch(query: RetrieveFollowersQuery(username: "Chris")){result in
            switch result {
            // In case of success
            case .success(let graphQLResult):
                // We try to parse our result
                guard let followings = graphQLResult.data?.followings else {
                    return
                }
                for follower in followings {
                    Network.shared.apollo.fetch(query:
                    RetrievePostQuery(username: follower.follower)){result in
                        switch result {
                        // In case of success
                        case .success(let graphQLResult):
                            guard let posts = graphQLResult.data?.post else{
                                return
                            }
                            for post in posts{
                                
                                ImageDownload().downloadImage(key: post.imageUrl ?? "", completion: { result, error in
                                    if (error == nil){
                                        guard let image = ImageBuilder.buildImage(imageData: result) else{
                                            return
                                        }
                                        self.posts.append(Post(post:post, image: image))
                                        
                                        //self.didChange.send(self)
                                        
                                    }else{
                                        print(error)
                                    }
                                })
                            }
                            
                        case .failure(let error):
                            // Network or response format errors
                            self.didChange.send(nil)
                            print(error)
                        }
                    }
                }
                
                print()
            // In case of failure, we present that message
            case .failure(let error):
                // Network or response format errors
                print(error)
            }
            
        }
    }
}
