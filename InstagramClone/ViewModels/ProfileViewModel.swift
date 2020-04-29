//
//  ProfileViewViewModel.swift
//  InstagramClone
//
//  Created by ilario salatino on 30.03.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import Foundation
import SwiftUI

class ProfileViewModel{
    
    var profile:Profile
    
    init(username:String){
        self.profile = Profile(username: username)
    }
    
    func getImages(){
        
    }
}
