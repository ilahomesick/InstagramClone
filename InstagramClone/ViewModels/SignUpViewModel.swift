//
//  SignUpViewModel.swift
//  InstagramClone
//
//  Created by ilario salatino on 28.03.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import Foundation
import Apollo


class SignUpViewModel: AlertPresentableViewModel{
    
    func signUp(username: String, password:String, email: String){
        
        
        
        guard
            let fileURL = Bundle.main.url(forResource: "home",
                                          withExtension: "png"),
            let file = GraphQLFile(fieldName: "photo",
                                   originalName: "home.png",
                                   mimeType: "image/png", // <-defaults to "application/octet-stream"
                fileURL: fileURL) else {
                    // Either the file URL couldn't be created or the file couldn't be created.
                    return
        }
        
        Network.shared.apollo.upload(operation: NewPostMutation(photo: "home"), // <-- `Upload` is a custom scalar that's a `String` under the hood.
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
        
        
        
        
        
        
        // Perform the SignUpUser mutation, passing the parameters we just got from our TextFields
        
        //        Network.shared.apollo.perform(mutation: SignUpUserMutation(username: username, password: password, email: email)){ result in
        //            // Let's switch the result so we can separate a successful one from an error
        //            switch result {
        //                // In case of success
        //                case .success(let graphQLResult):
        //                    // We try to parse our result
        //                    if let objId = graphQLResult.data?.signUp.id {
        //                        self.response = Response(success: true,message: objId)
        //                    }
        //                    // but in case of any GraphQL errors we present that message
        //                    else if let errors = graphQLResult.errors {
        //                        // GraphQL errors
        //                        self.alertModel = AlertModel(title: NSLocalizedString("alert_title_attention", comment: ""), message: errors.description, button: NSLocalizedString("alert_button_ok", comment: ""),show: true)
        ////                        self.response = Response(success: false,message: errors.description)
        ////                        self.showingAlert = true
        //                    }
        //                // In case of failure, we present that message
        //                case .failure(let error):
        //                  // Network or response format errors
        //                    self.alertModel = AlertModel(title: NSLocalizedString("alert_title_attention", comment: ""), message: error.localizedDescription, button: NSLocalizedString("alert_button_ok", comment: ""),show: true)
        ////                    self.response = Response(success: false,message: error.localizedDescription)
        ////                    self.showingAlert = true
        //            }
    }
    
}


