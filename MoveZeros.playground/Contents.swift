import Foundation
import XCTest

//LeetCode 283. Move Zeroes
//https://leetcode.com/problems/move-zeroes/
func moveZeroes(_ nums: inout [Int]) {
    var lastZero = 0
    var lastNum = 0
    
    for num in nums {
        if num != 0 {
            nums.swapAt(lastZero, lastNum)
            lastZero += 1
        }
        
        lastNum += 1
    }
}

class Tests: XCTestCase {
    func testOne() {
        let expected = [1,3,12,0,0]
        var input = [0,1,0,3,12]
        moveZeroes(&input)

        XCTAssertEqual(expected, input)
    }
    
    func testTwo() {
        let expected = [1,3,12,0,0]
        var input = [1,0,0,3,12]
        moveZeroes(&input)

        XCTAssertEqual(expected, input)
    }
}
Tests.defaultTestSuite.run()
