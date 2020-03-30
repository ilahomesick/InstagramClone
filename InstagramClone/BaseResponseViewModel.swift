//
//  BaseResponseViewModel.swift
//  InstagramClone
//
//  Created by ilario salatino on 30.03.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import Foundation

class BaseResponseViewModel:ObservableObject{
    @Published var response: Response = Response(success:false,message: "error"){
        willSet { self.objectWillChange.send() }
    }
}
