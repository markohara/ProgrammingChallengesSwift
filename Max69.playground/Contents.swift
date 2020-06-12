import Foundation
import XCTest

//LeetCode 1323. Maximum 69 Number
//https://leetcode.com/problems/maximum-69-number/
func maximum69Number (_ num: Int) -> Int {
    var num = num
    var digits = [Int]()
    
    while num > 0 {
        digits.insert(num % 10, at: 0)
        num /= 10
    }
    
    for i in 0..<digits.count{
        if digits[i] == 6 {
            digits[i] = 9
            break
        }
    }
    
    return digits.reduce(0) {($0 * 10) + $1}
}

class Tests: XCTestCase {
    func testOne() {
        let expected = 9969
        let actual = maximum69Number(9669)
        
        XCTAssertEqual(expected, actual)
    }
    
    func testTwo() {
        let expected = 9999
        let actual = maximum69Number(9996)
        
        XCTAssertEqual(expected, actual)
    }
    
    func testThree() {
        let expected = 9999
        let actual = maximum69Number(9999)
        
        XCTAssertEqual(expected, actual)
    }
}
Tests.defaultTestSuite.run()
