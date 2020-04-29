//
//  SearchViewModel.swift
//  InstagramClone
//
//  Created by ilario salatino on 27.04.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import Foundation

class SearchViewModel: ObservableObject{
    
    var users: [String] = []
    
    init(){
        self.retrieveUsers(username: "")
    }
    
    func retrieveUsers(username: String){
        
    }
    
}
