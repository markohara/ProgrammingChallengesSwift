import Foundation
import XCTest

//LeetCode 1464. Maximum Product of Two Elements in an Array
//https://leetcode.com/problems/maximum-product-of-two-elements-in-an-array/submissions/
func maxProduct(_ nums: [Int]) -> Int {
    let nums = nums.sorted(by: >)
    return (nums[0] - 1) * (nums[1] - 1)
}

class Tests: XCTestCase {
    func testOne() {
        let expected = 12
        let actual = maxProduct([3,4,5,2])

        XCTAssertEqual(expected, actual)
    }

    func testTwo() {
        let expected = 16
        let actual = maxProduct([1,5,4,5])

        XCTAssertEqual(expected, actual)
    }

    func testThree() {
        let expected = 12
        let actual = maxProduct([3,7])

        XCTAssertEqual(expected, actual)
    }
}
Tests.defaultTestSuite.run()
