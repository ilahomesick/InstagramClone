//
//  TimeLineDetailViewModel.swift
//  InstagramClone
//
//  Created by ilario salatino on 31.03.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import Foundation
class TimeLineDetailViewModel:ObservableObject{
    
    
    func retrievePosts()->[Post]{
        return [Post(image: "ic_logo", description: "", comments: [], date: "", id: 1, username: "ilario"), Post(image: "ic_logo", description: "", comments: [], date: "", id: 2, username: "chris"), Post(image: "ic_logo", description: "", comments: [], date: "", id: 3, username: "elio")]
    }
}
