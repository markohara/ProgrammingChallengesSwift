import Foundation
import XCTest

//LeetCode 169. Majority Element
//https://leetcode.com/problems/majority-element/
func majorityElement(_ nums: [Int]) -> Int {
    var majority = nums.count/2
    var count = [Int:Int]()
    var res = 0
    
    for i in nums {
        count[i] = (count[i] ?? 0) + 1
    }
    
    for (key, value) in count {
        if value >= majority {
            majority = value
            res = key
        }
    }
    
    return res
}

class Tests: XCTestCase {
    func testOne() {
        let expected = 3
        let actual = majorityElement([3,2,3])
        
        XCTAssertEqual(expected, actual)
    }
    
    func testTwo() {
        let expected = 2
        let actual = majorityElement([2,2,1,1,1,2,2])
        
        XCTAssertEqual(expected, actual)
    }
}

Tests.defaultTestSuite.run()
