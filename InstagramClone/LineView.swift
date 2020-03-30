//
//  LineView.swift
//  InstagramClone
//
//  Created by ilario salatino on 30.03.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import SwiftUI

struct LineView: View {
    let model:LineViewViewModel
    let images: [String]
    
    var body: some View {
        HStack(spacing: 2){
            PostPreviewView(image: images[0])
            PostPreviewView(image: images[1])
            PostPreviewView(image: images[2])
        }
    }
}

struct LineView_Previews: PreviewProvider {
    static var previews: some View {
        LineView(model: LineViewViewModel(), images: ["ic_logo","ic_logo","ic_logo"])
    }
}
