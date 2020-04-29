//
//  ImageUpload.swift
//  InstagramClone
//
//  Created by ilario salatino on 22.04.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import Foundation
import AWSCognito
import AWSS3
import AWSCore
import SwiftUI

typealias completionBlock = (_ response: Any?, _ error: Error?) -> Void

class ImageUpload{
    // Inizializza il provider di credenziali Amazon Cognito
    
    
    func uploadImage(image:SelectedImage,completion: completionBlock?){
        
        guard let data = image.image.uiImage.jpegData(compressionQuality: 0.5) else {
            let error = NSError(domain:"", code:402, userInfo:[NSLocalizedDescriptionKey: "invalid image"])
            return
        }
        let tmpPath = NSTemporaryDirectory() as String
        let fileName: String = ProcessInfo.processInfo.globallyUniqueString + (".jpeg")
        let filePath = tmpPath + "/" + fileName
        let fileUrl = URL(fileURLWithPath: filePath)
        do {
            try data.write(to: fileUrl)
            self.uploadfile(fileUrl: fileUrl, fileName: fileName, contenType: "image", completion: completion)
        } catch {
            let error = NSError(domain:"", code:402, userInfo:[NSLocalizedDescriptionKey: "invalid image"])
            
        }
    }
    
    private func uploadfile(fileUrl: URL, fileName: String, contenType: String, completion: completionBlock?) {
        // Upload progress block
        let expression = AWSS3TransferUtilityUploadExpression()
        
         //Completion block
        var completionHandler: AWSS3TransferUtilityUploadCompletionHandlerBlock?
        completionHandler = { (task, error) -> Void in
            DispatchQueue.main.async(execute: {
                if error == nil {
                    let url = AWSS3.default().configuration.endpoint.url
                    let publicURL = url?.appendingPathComponent("ilariosalatino").appendingPathComponent(fileName)
                    print("Uploaded to:\(String(describing: publicURL))")
                    if let completionBlock = completion {
                        completionBlock(fileName, nil)
                    }
                } else {
                    if let completionBlock = completion {
                        completionBlock(nil, error)
                    }
                }
            })
        }
        // Start uploading using AWSS3TransferUtility
        let awsTransferUtility = AWSS3TransferUtility.default()
        awsTransferUtility.uploadFile(fileUrl, bucket: "ilariosalatino", key: fileName, contentType: contenType, expression: expression, completionHandler: completionHandler).continueWith { (task) -> Any? in
            if let error = task.error {
                print("error is: \(error.localizedDescription)")
            }
            if let _ = task.result {
                // your uploadTask
            }
            return nil
        }
    }
    
}
