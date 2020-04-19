//
//  PhotoPickerLineView.swift
//  InstagramClone
//
//  Created by ilario salatino on 05.04.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import SwiftUI

struct PhotoPickerLineView: View {
    @ObservedObject var model: PhotoPickerLineViewModel
    @ObservedObject var selectedImage: SelectedImage
    
    init(images:[UploadableImage],selectedImage: SelectedImage){
        self.model = PhotoPickerLineViewModel(images: images)
        self.selectedImage = selectedImage
    }
    
    
    var body: some View {
        
            HStack(spacing: 2){
            ForEach(0..<self.model.images.count){ image in
                Button(action: {
                    self.selectedImage.image=self.model.images[image]
                }){
                    self.model.getImage(index: image) .renderingMode(.original).resizable()
                .frame(width: 103.5, height: 103.5)
                }
            }
        }
    }
}

struct PhotoPickerLineView_Previews: PreviewProvider {
    
    let images = [UploadableImage(image: UIImage(imageLiteralResourceName: "ic_logo")),UploadableImage(image: UIImage(imageLiteralResourceName: "ic_logo")),UploadableImage(image: UIImage(imageLiteralResourceName: "ic_logo")),UploadableImage(image: UIImage(imageLiteralResourceName: "ic_logo"))]
    
    static var previews: some View {
        PhotoPickerLineView(images: self.init().images, selectedImage: SelectedImage(selectedImage: UIImage(imageLiteralResourceName: "ic_logo")))
    }
}
