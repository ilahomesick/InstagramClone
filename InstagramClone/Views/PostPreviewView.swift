//
//  PostPreviewView.swift
//  InstagramClone
//
//  Created by ilario salatino on 30.03.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import SwiftUI

struct PostPreviewView: View {
    
    @ObservedObject var model: PostPreviewViewModel
    
    init(image:Image){
        self.model = PostPreviewViewModel(image: image)
    }
    
    var body: some View {
        //Image(self.model.getImage())
        self.model.image
        .resizable()
        .frame(width: 136, height: 136)
    }
}

struct PostPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        PostPreviewView(image: Image("ic_logo"))
    }
}
