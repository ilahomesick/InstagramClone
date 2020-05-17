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
    
    init(post: Post){
        self.model = PostPreviewViewModel(post: post)
    }
    
    var body: some View {
        //Image(self.model.getImage())
        //GeometryReader{geometry in
        VStack{
            self.model.getImage().map{ image in
                image.resizable().frame(width: 103.5, height: 103.5, alignment: .leading)
            }
        }
        
    }
}

struct PhotoUploadPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoUploadPreviewView(post: Post(post: RetrievePostQuery.Data.Post(imageUrl: "877BE21F-F83A-41BC-9FA4-F80CB75B3728-10597-00000D8386F28FF6.jpeg",description: "ciao", date: "", user: "Ilario"), image: Image("ic-logo")))
    }
}
