import Foundation
import XCTest

//LeetCode 1313. Decompress Run-Length Encoded List
//https://leetcode.com/problems/decompress-run-length-encoded-list/
func decompressRLElist(_ nums: [Int]) -> [Int] {
    var res = [Int]()
    var i = 0
    
    while i != nums.count {
        let arr = Array(repeating: nums[i+1], count: nums[i])
        res.append(contentsOf: arr)
        
        i += 2
    }
    
    return res
}

class Tests: XCTestCase {
    func testOne() {
        let expected = [2,4,4,4]
        let actual = decompressRLElist([1,2,3,4])

        XCTAssertEqual(expected, actual)
    }
    
    func testTwo() {
        let expected = [1,3,3]
        let actual = decompressRLElist([1,1,2,3])
        
        XCTAssertEqual(expected, actual)
    }
}
Tests.defaultTestSuite.run()
