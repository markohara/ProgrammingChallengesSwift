import Foundation
import XCTest

//LeetCode 1342. Number of Steps to Reduce a Number to Zero
//https://leetcode.com/problems/number-of-steps-to-reduce-a-number-to-zero/
func numberOfSteps (_ num: Int) -> Int {
    var num = num
    var steps = -1
    var odds = 0
    
    while num > 0 {
        if num % 2 != 0 {
            odds += 1
        }
        
        num = num / 2
        steps += 1
    }
    
    return steps + odds
}

class Tests: XCTestCase {
    func testOne() {
        let expected = 6
        let actual = numberOfSteps(14)
        
        XCTAssertEqual(expected, actual)
    }
    
    func testTwo() {
        let expected = 4
        let actual = numberOfSteps(8)
        
        XCTAssertEqual(expected, actual)
    }
    
    func testThree() {
        let expected = 12
        let actual = numberOfSteps(123)
        
        XCTAssertEqual(expected, actual)
    }
}
Tests.defaultTestSuite.run()
