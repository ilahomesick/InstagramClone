//
//  PhotoUploadPreviewView.swift
//  InstagramClone
//
//  Created by ilario salatino on 05.04.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import SwiftUI

struct PhotoUploadPreviewView: View {
    @ObservedObject var model: PostPreviewViewModel
    
    init(image: Image){
        self.model = PostPreviewViewModel(image: image)
    }
    
    var body: some View {
        //Image(self.model.getImage())
        //GeometryReader{geometry in
        VStack{
            
                self.model.image
                    .resizable().frame(width: 103.5, height: 103.5, alignment: .leading)
        }
        
    }
}

struct PhotoUploadPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoUploadPreviewView(image: Image("ic_logo"))
    }
}
