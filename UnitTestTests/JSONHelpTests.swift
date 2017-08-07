//
//  JSONHelpTests.swift
//  UnitTest
//
//  Created by Ｍason Chang on 2017/8/7.
//  Copyright © 2017年 Ｍason Chang iOS#4. All rights reserved.
//

import XCTest

@testable import UnitTest

class JSONHelpTests: XCTestCase {
    
    
    var helper: JSONHelper?
    
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        helper = JSONHelper()
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
        
        helper = nil
        
        super.tearDown()
    }
    

    func testLoadJSON(){
        
        
        let promise = self.expectation(description: "Load JSON file Locally")
        
        helper!.loadJSON(name: "Demo") { result in
            
            promise.fulfill()
            
            switch result {
                
            case .success(let json):
                
                let object = json as! [String: Any]

                XCTAssert(object)
                
                let message = object!["M"] as? String
                
                XCTAssertEqual(message, "HELLO")
                
            
            case .failure(let error):
                
                XCTFail("\(error)")
                
                
            }
        }
        
        self.wait(for: [ promise ], timeout: 10.0)
        
    }
    
    
}
