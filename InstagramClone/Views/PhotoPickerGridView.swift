//
//  PhotoPickerGrid.swift
//  InstagramClone
//
//  Created by ilario salatino on 05.04.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import SwiftUI

struct PhotoPickerGridView: View {
    
    @ObservedObject var model: PhotoPickerGridViewModel
    @ObservedObject var selectedImage: SelectedImage
   
    init(images: [UploadableImage], selectedImage: SelectedImage){
        self.model = PhotoPickerGridViewModel(images: images)
        self.selectedImage = selectedImage
    }
    
    var body: some View {
        VStack{
            //self.selectedImage.image.resizable()
        ScrollView{
            VStack(alignment: .leading, spacing: 2){
                ForEach(0..<self.model.lines.count) { line in
                    PhotoPickerLineView(images: self.model.lines[line], selectedImage: self.selectedImage)
                }
                
            }
        }
        }
    }
}


struct PhotoPickerGridView_Previews: PreviewProvider {
    let images = [UploadableImage(image: UIImage(imageLiteralResourceName: "ic_logo")),UploadableImage(image: UIImage(imageLiteralResourceName: "ic_logo")),UploadableImage(image: UIImage(imageLiteralResourceName: "ic_logo")),UploadableImage(image: UIImage(imageLiteralResourceName: "ic_logo"))]
    
    static var previews: some View {
        PhotoPickerGridView(images: self.init().images,selectedImage: SelectedImage(selectedImage:  UIImage(imageLiteralResourceName: "ic_logo")))
    }
}
