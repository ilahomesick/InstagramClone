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
    let images: [Image]
    let lines: [[Image]]
    
    init(images: [Image]){
        self.images = images
        self.lines = images.chunked(into: 3)
    }
    
    
    
    
}
