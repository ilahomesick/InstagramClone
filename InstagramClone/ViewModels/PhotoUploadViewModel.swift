//
//  PhotoUploadViewModel.swift
//  InstagramClone
//
//  Created by ilario salatino on 01.04.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import Foundation
import Photos
import PhotosUI
import UIKit
import SwiftUI
import Apollo

class PhotoUploadViewModel:ObservableObject{
    
    var images: [UploadableImage] = [UploadableImage(image: UIImage(imageLiteralResourceName: "ic_logo"))]
    
    init(){
        self.retrievePics()
    }
    
    func retrievePics(){
        let allPhotosOptions = PHFetchOptions()
        allPhotosOptions.sortDescriptors = [NSSortDescriptor(key: "creationDate", ascending: true)]
        let manager = PHImageManager.default()
        // 2
        let fetchResult: PHFetchResult = PHAsset.fetchAssets(with: .image, options: allPhotosOptions)
        if(!(fetchResult.count>0)){
            return
        }
        
        let requestOptions = PHImageRequestOptions()
        // 2
        requestOptions.isSynchronous = true
        requestOptions.deliveryMode = .highQualityFormat
        
        var images: [UploadableImage] = []
        // 2
        for i in 0..<fetchResult.count{
            manager.requestImage(for: fetchResult.object(at: i), targetSize: CGSize(width: 647, height: 375), contentMode: .aspectFill, options: requestOptions) { img, err  in
                // 3
                guard let img = img else { return }
                images.append(UploadableImage(image: img))
            }
        }
        
        self.images = images
    }
    
    func uploadImage(image:SelectedImage){
        let file = GraphQLFile(fieldName: "photo", originalName: "post", mimeType: "image/jpeg", data: image.image.uiImage.jpegData(compressionQuality: 0.5)!)
        
        Network.shared.apollo.upload(operation: NewPostMutation(photo: "post"), // <-- `Upload` is a custom scalar that's a `String` under the hood.
        files: [file]) { result in
            switch result {
            case .success(let graphQLResult):
                Network.shared.apollo.perform(mutation: CreatePostMutation(photo:graphQLResult.data?.createFile.url, description: "")){ result in
                    switch result {
                    case .success(let graphQLResult):
                        print()
                    //\(graphQLResult.data?.singleUpload.id)")
                    case .failure(let error):
                        print("error: \(error)")
                    }
                }
            //\(graphQLResult.data?.singleUpload.id)")
            case .failure(let error):
                print("error: \(error)")
            }
        }
    }
    
    func getUiImage(index: Int)-> UIImage{
        return images[index].uiImage
    }
}
