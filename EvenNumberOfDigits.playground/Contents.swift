import Foundation
import XCTest

//LeetCode 1295. Find Numbers with Even Number of Digits
//https://leetcode.com/problems/find-numbers-with-even-number-of-digits/
func findNumbers(_ nums: [Int]) -> Int {
    nums.filter(hasEvenDigits).count
}

func hasEvenDigits(_ num: Int) -> Bool {
    var count = 0
    var num = num
    
    while num > 0 {
        num = num / 10
        count += 1
    }
    
    return count % 2 == 0
}

class Tests: XCTestCase {
    func testOne() {
        let expected = 2
        let actual = findNumbers([12,345,2,6,7896])
        
        XCTAssertEqual(expected, actual)
    }
    
    func testTwo() {
        let expected = 1
        let actual = findNumbers([555,901,482,1771])
        
        XCTAssertEqual(expected, actual)
    }
    
    func testThree() {
        let expected = 0
        let actual = findNumbers([1,333,44444,3])
        
        XCTAssertEqual(expected, actual)
    }
}
Tests.defaultTestSuite.run()
