//
//  PhotPickerDetailView.swift
//  InstagramClone
//
//  Created by ilario salatino on 05.04.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import SwiftUI

struct PhotoPickerDetailView: View {
    @ObservedObject var model: PhotoPickerDetailViewModel
    @Binding var selectedImage: Image
    
    init(image:Image,selectedImage: Binding<Image>){
        self.model = PhotoPickerDetailViewModel(image: image)
        self._selectedImage = selectedImage
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
                self.model.image
        }.padding()
        
    }
}

struct PhotPickerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoPickerDetailView(image: Image("ic_logo"), selectedImage: .constant(Image("ic_logo")))
    }
}
