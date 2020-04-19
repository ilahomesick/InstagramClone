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
    @ObservedObject var selectedImage: SelectedImage = SelectedImage(selectedImage:  UIImage(imageLiteralResourceName: "ic_logo"))
    
    init(){
        self.selectedImage = SelectedImage(selectedImage: model.getUiImage(index: 0))
    }
    
    
    var body: some View {
        
        VStack{
            HStack{
                NavigationLink(destination: HomeView()) { Text("Cancel").padding()
                    Spacer()
            }
                Button(action: {
                    self.model.uploadImage(image: self.selectedImage)
                }) {
                    Text("Next")
                }.padding()
            }
                Section{
                    Image(uiImage:self.selectedImage.image.uiImage).resizable()
                PhotoPickerGridView(images: self.model.images, selectedImage:self.selectedImage)
                }
            }
    }
}

struct PhotoUploadView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoUploadView()
    }
}
