import Foundation
import XCTest

//LeetCode 540. Single Element in a Sorted Array
//https://leetcode.com/problems/single-element-in-a-sorted-array/
func singleNonDuplicate(_ nums: [Int]) -> Int {
    guard nums.count > 1 else { return nums[0] }
    
    for i in 1..<nums.count-1 {
        let l = nums[i-1]
        let val = nums[i]
        let r = nums[i+1]
        
        if val == l || val == r {
            if i-1 == 0 && val != l {
                return l
            }
            
            if i+1 == nums.count-1 && val != r {
                return r
            }
            
            continue
        }
        
        return val
    }
    
    return -1
}

singleNonDuplicate([1,1,2])

class Tests: XCTestCase {
    func testOne() {
        let expected = 2
        let actual = singleNonDuplicate([1,1,2,3,3,4,4,8,8])
        
        XCTAssertEqual(expected, actual)
    }
    
    func testTwo() {
        let expected = 10
        let actual = singleNonDuplicate([3,3,7,7,10,11,11])
        
        XCTAssertEqual(expected, actual)
    }
}

Tests.defaultTestSuite.run()
