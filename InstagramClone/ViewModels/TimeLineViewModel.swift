//
//  TimeLineViewModel.swift
//  InstagramClone
//
//  Created by ilario salatino on 05.04.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import Foundation
import SwiftUI

class TimeLineViewModel:ObservableObject{
    let posts: [Post]
    let lines: [[Post]]
    
        init(posts: [Post]){
            self.posts = posts
            self.lines = posts.chunked(into: 3)
        }
    
    
    
    
}
