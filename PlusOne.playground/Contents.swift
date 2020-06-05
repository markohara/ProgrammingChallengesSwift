import Foundation
import XCTest

//LeetCode 66. Plus One
//https://leetcode.com/problems/plus-one/
func plusOne(_ digits: [Int]) -> [Int] {
    var digits = digits

    for i in stride(from: digits.count - 1, through: 0, by: -1) {
        if digits[i] < 9 {
            digits[i] += 1
            return digits
        }
        
        digits[i] = 0
    }
    
    return [1] + digits
}

class Tests: XCTestCase {
    func testOne() {
        let expected = [1,2,4]
        let actual = plusOne([1,2,3])
        
        XCTAssertEqual(expected, actual)
    }
    
    func testTwo() {
        let expected = [1,2,4]
        let actual = plusOne([1,2,3])
        
        XCTAssertEqual(expected, actual)
    }
    
    func testThree() {
        let expected = [1,0]
        let actual = plusOne([9])
        
        XCTAssertEqual(expected, actual)
    }
}
Tests.defaultTestSuite.run()
