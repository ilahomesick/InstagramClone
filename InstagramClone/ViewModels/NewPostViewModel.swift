//
//  NewPostViewModel.swift
//  InstagramClone
//
//  Created by ilario salatino on 20.04.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import Foundation
import SwiftUI
import Apollo

class NewPostViewModel{
    
    func getImage(selectedImage: SelectedImage)->Image{
        return selectedImage.image.image
    }
    
    func uploadImage(image:SelectedImage){
        
        
        let uploader = ImageUpload()
        
        uploader.uploadImage(image: image, completion: {url, error in
            if (error != nil) {
                return
            }
            Network.shared.apollo.perform(mutation:
                    CreatePostMutation(description: "", photo: url as! String, user: "Ilario"
                )){ result in
                    switch result {
                    case .success(let graphQLResult):
                        print()
                    //\(graphQLResult.data?.singleUpload.id)")
                    case .failure(let error):
                        print("error: \(error)")
                    }
            }
        })

            
    }
}


