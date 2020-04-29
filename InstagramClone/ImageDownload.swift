//
//  ImageDownload.swift
//  InstagramClone
//
//  Created by ilario salatino on 23.04.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import Foundation
import AWSS3

struct ImageDownload{
    
    func downloadImage(key: String, completion: completionBlock?){
        let expression = AWSS3TransferUtilityDownloadExpression()
            
             //Completion block
            var completionHandler: AWSS3TransferUtilityDownloadCompletionHandlerBlock? = { (task, url, data, error) -> Void in
            DispatchQueue.main.async(execute: DispatchWorkItem(block: { () -> Void  in
                if error == nil {
                    if let completionBlock = completion {
                        completionBlock(data, nil)
                    }
                } else {
                    if let completionBlock = completion {
                        completionBlock(data, error)
                    }
                }
            }))
            }
             //Start uploading using AWSS3TransferUtility
        let awsTransferUtility = AWSS3TransferUtility.default()
            awsTransferUtility.downloadData(fromBucket: "ilariosalatino", key: key, expression: expression, completionHandler: completionHandler).continueWith { (task) -> Any? in
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
