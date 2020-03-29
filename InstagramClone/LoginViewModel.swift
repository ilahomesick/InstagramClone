//
//  LoginViewModel.swift
//  InstagramClone
//
//  Created by ilario salatino on 29.03.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import Foundation

class LoginViewModel: AlertPresentableViewModel{
    
    @Published var alertModel: AlertModel = AlertModel(title: "", message: "", button: "", show: false)
    
    
}
