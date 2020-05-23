import Foundation
import XCTest

//Leetcode 136. Single Number
//https://leetcode.com/problems/single-number/
func singleNumber(_ nums: [Int]) -> Int {
    guard nums.count > 0 else { return -1 }
    var seen = [Int:Int]()
    
    for i in nums {
        if let _ = seen[i] {
            seen[i] = nil
            continue
        }
        
        seen[i] = 1
    }
    
    return seen.keys.first!
}

class Tests: XCTestCase {
    func testOne() {
        let expected = 1
        let actual = singleNumber([2,2,1])
        
        XCTAssertEqual(expected, actual)
    }
}

Tests.defaultTestSuite.run()
