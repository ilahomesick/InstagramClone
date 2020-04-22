//
//  Network.swift
//  InstagramClone
//
//  Created by ilario salatino on 29.03.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import Foundation
import Apollo

class Network{
    static let shared = Network()
    
    private lazy var networkTransport: HTTPNetworkTransport = {
        let configuration = URLSessionConfiguration.default
//        configuration.httpAdditionalHeaders = [
//            "X-Parse-Application-Id": "YXTCXWg0TKk2I2vJWwiCbtgHdmqsXXSs1RnSj2Ib",
//            "X-Parse-Client-Key": "DJbM4VjrJ1GdtsFxF9c3dLgvwoFClppt5k8fcNzA"
//        ]
        
        let url = URL(string: "http://0.0.0.0:8080/v1/graphql")!
        let transport = HTTPNetworkTransport(url: url, session: URLSession(configuration: configuration), sendOperationIdentifiers: false, useGETForQueries: false, enableAutoPersistedQueries: false, useGETForPersistedQueryRetry: false, requestCreator: ApolloRequestCreator())
        self.networkTransport = transport;
        
        return transport
    }()
    
    private(set) lazy var apollo = ApolloClient(networkTransport: self.networkTransport)

}
