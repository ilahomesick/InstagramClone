//
//  InstagramCloneTests.swift
//  InstagramCloneTests
//
//  Created by ilario salatino on 12.05.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import XCTest
import Apollo
@testable import InstagramClone

class SignUpViewModelTestsTests: XCTestCase {
    
    var model = SignUpViewModel()
    

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        Network.shared.setClient(client: ApolloClient(networkTransport: MockNetworkTransport(body: JSONObject())))
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        model.signUp(username: "", password: "", email: "")
        
        sleep(1)
        
        assert(!model.response.success)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
