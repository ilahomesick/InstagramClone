//
//  PhotoUploadView.swift
//  InstagramClone
//
//  Created by ilario salatino on 01.04.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import SwiftUI
import Photos

struct PhotoUploadView: View {
    @ObservedObject var model: PhotoUploadViewModel = PhotoUploadViewModel()
    //@State var images: [Image] = self.model.retrievePics()
    
    var body: some View {
        VStack{
            PostPreviewView(image: self.model.)
            TimeLineView(images: self.images)
            
        }
    }
}

struct PhotoUploadView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoUploadView(model: PhotoUploadViewModel())
    }
}
