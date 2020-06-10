import Foundation
import XCTest

//LeetCode 1470. Shuffle the Array
//https://leetcode.com/problems/shuffle-the-array/
func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
    var res = [Int]()
    
    for i in 0..<n {
        res.append(contentsOf: [nums[i], nums[i+n]])
    }
    
    return res
}

class Tests:XCTestCase {
    func testOne() {
        let expected = [2,3,5,4,1,7]
        let actual = shuffle([2,5,1,3,4,7], 3)
        
        XCTAssertEqual(expected, actual)
    }
    
    func testTwo() {
        let expected = [1,4,2,3,3,2,4,1]
        let actual = shuffle([1,2,3,4,4,3,2,1], 4)
        
        XCTAssertEqual(expected, actual)
    }
    
    func testThree() {
        let expected = [1,2,1,2]
        let actual = shuffle([1,1,2,2], 2)
        
        XCTAssertEqual(expected, actual)
    }
}

Tests.defaultTestSuite.run()
