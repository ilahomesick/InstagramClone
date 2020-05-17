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
        
        Network.shared.apollo.perform(mutation: SignUpUserMutation(username: username, password: password)) { result in
            switch result {
            case .success(let graphQLResult):
                if let sessionToken = graphQLResult.data?.insertUser?.jsonObject["id"] {
                    
                    self.response = Response(success: true, message: sessionToken as? String ?? "")
                        
                    }
                        // but in case of any GraphQL errors we present that message
                    else if let errors = graphQLResult.errors {
                        // GraphQL errors
                        
                        self.alertModel = AlertModel(message: errors.description, show: true)
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


