//
//  Session.swift
//  InstagramClone
//
//  Created by ilario salatino on 30.03.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import Foundation

class Session{
    static let session = Session()
    
    var sessionToken: String = ""
    
    func writeToken(token:String) ->Bool{
        let key = token
        
        let tag = "com.ilarioSalatino.InstagramClone.mykey".data(using: .utf8)!
        let addquery: [String: Any] = [kSecClass as String: kSecClassKey,
                                       kSecAttrApplicationTag as String: tag,
                                       kSecValueRef as String: key]
        let status = SecItemAdd(addquery as CFDictionary, nil)
        
        return status == errSecSuccess    }
    
}
