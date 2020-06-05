import Foundation
import XCTest

//LeetCode 217. Contains Duplicate
//https://leetcode.com/problems/contains-duplicate/
func containsDuplicate(_ nums: [Int]) -> Bool {
    var count = [Int:Int]()
    
    for num in nums {
        if let _ = count[num] {
            return true
        } else {
            count[num] = 1
        }
    }
    
    return false
}

class Tests: XCTestCase {
    func testOne() {
        let expected = true
        let actual = containsDuplicate([1,2,3,1])
        
        XCTAssertEqual(expected, actual)
    }
    
    func testTwo() {
        let expected = false
        let actual = containsDuplicate([1,2,3,4])
        
        XCTAssertEqual(expected, actual)
    }
    
    func testThree() {
        let expected = true
        let actual = containsDuplicate([1,1,1,3,3,4,3,2,4,2])
        
        XCTAssertEqual(expected, actual)
    }
}
Tests.defaultTestSuite.run()
