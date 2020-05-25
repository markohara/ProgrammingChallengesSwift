import Foundation
import XCTest

//LeetCode 1365. How Many Numbers Are Smaller Than the Current Number
//https://leetcode.com/problems/how-many-numbers-are-smaller-than-the-current-number/
func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
    var res = [Int]()
    
    for (currI, curr) in nums.enumerated() {
        var count = 0
        for (i, element) in nums.enumerated() where currI != i {
            if element < curr { count += 1}
        }
        res.append(count)
    }
    
    return res
}

class Tests: XCTestCase {
    func testOne() {
        let expected = [4,0,1,1,3]
        let actual = smallerNumbersThanCurrent([8,1,2,2,3])
        
        XCTAssertEqual(expected, actual)
    }
    
    func testTwo() {
        let expected = [2,1,0,3]
        let actual = smallerNumbersThanCurrent([6,5,4,8])
        
        XCTAssertEqual(expected, actual)
    }
    
    func testThree() {
        let expected = [0,0,0,0]
        let actual = smallerNumbersThanCurrent([7,7,7,7])
        
        XCTAssertEqual(expected, actual)
    }
}

Tests.defaultTestSuite.run()
