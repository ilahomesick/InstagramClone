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
    var model: PhotoUploadViewModel = PhotoUploadViewModel()
    
    var body: some View {
        VStack{
            TimeLineView(images: self.model.retrievePics())
            
        }
    }
}

struct PhotoUploadView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoUploadView(model: PhotoUploadViewModel())
    }
}
