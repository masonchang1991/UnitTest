//
//  CalculatorTests.swift
//  UnitTest
//
//  Created by Ｍason Chang on 2017/8/7.
//  Copyright © 2017年 Ｍason Chang iOS#4. All rights reserved.
//

import XCTest

@testable import UnitTest

class CalculatorTests: XCTestCase {
    

    var calculator: Calculator?
    
    override func setUp() {
        super.setUp()
        
        calculator = Calculator()
        
    }
    
    override func tearDown() {
        
        calculator = nil
    
        super.tearDown()
        
    }
    
    
    func testAdd() {
        
        XCTAssertEqual(
            calculator!.add(3, 5),
            8
        )
    }
    
    
    func testMutiply() {
        
        XCTAssertEqual(
            calculator!.mutiply(3, 10),
            30)
        
        
        XCTAssertEqual(
            calculator!.mutiply(10, 3),
            30)
        
        
    }
    
    
    
    
    
}
