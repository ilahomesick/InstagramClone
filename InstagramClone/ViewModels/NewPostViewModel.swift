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
import Combine

class NewPostViewModel{
    
    var viewDismissalModePublisher = PassthroughSubject<Bool, Never>()
    private var shouldDismissView = false {
        didSet {
            viewDismissalModePublisher.send(shouldDismissView)
        }
    }
    
    func getImage(selectedImage: SelectedImage)->Image{
        return selectedImage.image.image
    }
    
    func uploadImage(image:SelectedImage){
        
        
        let uploader = ImageUpload()
        
        uploader.uploadImage(image: image, completion: {key, error in
            if (error != nil) {
                return
            }
            guard let photoKey = key as! String? else{
                return
            }
            Network.shared.apollo.perform(mutation:
                    CreatePostMutation(description: "", photo: photoKey, user: "Ilario"
                )){ result in
                    switch result {
                    case .success(let graphQLResult):
                        self.shouldDismissView = true
                        print()
                    //\(graphQLResult.data?.singleUpload.id)")
                    case .failure(let error):
                        print("error: \(error)")
                    }
            }
        })

            
    }
}


