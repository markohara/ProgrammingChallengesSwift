import Foundation
import XCTest

//Leetcode 1389. Create Target Array in the Given Order
//https://leetcode.com/problems/create-target-array-in-the-given-order/
func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
    var target = [Int]()
    
    for i in 0..<nums.count {
        target.insert(nums[i], at:index[i])
    }
    
    return target
}

class Tests: XCTestCase {
    func testOne() {
        let expected = [0,4,1,3,2]
        let actual = createTargetArray([0,1,2,3,4], [0,1,2,2,1])

        XCTAssertEqual(expected, actual)
    }
    
    func testTwo() {
        let expected = [0,1,2,3,4]
        let actual = createTargetArray([1,2,3,4,0], [0,1,2,3,0])

        XCTAssertEqual(expected, actual)
    }
}
Tests.defaultTestSuite.run()
