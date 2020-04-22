//
//  NewPostView.swift
//  InstagramClone
//
//  Created by ilario salatino on 20.04.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import SwiftUI

struct NewPostView: View {
    var model: NewPostViewModel = NewPostViewModel()
    var selectedImage: SelectedImage
    @State var text: String = ""
    var placeholder: String =  NSLocalizedString("new_post_caption", comment: "")
    
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    self.model.getImage(selectedImage: self.selectedImage).resizable().frame(width: 103.5, height: 103.5, alignment: .leading).padding()
                    TextField(self.placeholder, text: self.$text)
                }.frame(alignment: .topLeading)
            }.navigationBarItems(trailing: Button(action: {
                self.model.uploadImage(image: self.selectedImage)
            })
            {
                Text(NSLocalizedString("new_post_share", comment: ""))
            })
        }
    }
}

struct NewPostView_Previews: PreviewProvider {
    static var previews: some View {
        NewPostView(model: NewPostViewModel()
            , selectedImage: SelectedImage(selectedImage:  UIImage(imageLiteralResourceName: "ic_logo")), text: "",placeholder: "Write a caption...")
    }
}
