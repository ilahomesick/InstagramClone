//
//  LineViewViewModel.swift
//  InstagramClone
//
//  Created by ilario salatino on 30.03.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import Foundation
import SwiftUI

class LineViewViewModel: ObservableObject{
    
    let posts: [Post]
    
    init(posts: [Post]){
        self.posts = posts
    }
    
}
