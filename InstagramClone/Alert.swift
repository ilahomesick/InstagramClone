//
//  Alert.swift
//  InstagramClone
//
//  Created by ilario salatino on 29.03.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import Foundation

struct Alert{
    var alertTitle: String = ""
    var alertText: String = ""
    
    init(title: String, text: String){
        self.alertTitle = title
        self.alertText = text
    }
}
