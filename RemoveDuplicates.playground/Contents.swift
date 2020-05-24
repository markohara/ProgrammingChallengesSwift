import Foundation
import XCTest

//LeetCode 26. Remove Duplicates from Sorted Array
//https://leetcode.com/problems/remove-duplicates-from-sorted-array/
func removeDuplicates(_ nums: inout [Int]) -> Int {
    var lastUnique = nums[0]
    var pos = 1
    
    while pos < nums.count {
        if lastUnique == nums[pos] {
            nums.remove(at: pos)
            continue
        }
        
        lastUnique = nums[pos]
        pos += 1
    }
    
    return nums.count
}

class Tests: XCTestCase {
    func testOne() {
        let expected = 2
        var arr = [1,1,2]
        let actual = removeDuplicates(&arr)

        XCTAssertEqual(expected, actual)
    }

    func testTwo() {
        let expected = 5
        var arr = [0,0,1,1,1,2,2,3,3,4]
        let actual = removeDuplicates(&arr)

        XCTAssertEqual(expected, actual)
    }

    func testThree() {
        let expected = 5
        let expectedArr = [0,1,2,3,4]
        var arr = [0,0,1,1,1,2,2,3,3,4]
        let actual = removeDuplicates(&arr)

        XCTAssertEqual(expected, actual)
        XCTAssertEqual(expectedArr, arr)
    }
}

Tests.defaultTestSuite.run()
