import Foundation
import XCTest

// LeetCode 771. Jewels and Stones
// https://leetcode.com/problems/jewels-and-stones/
func numJewelsInStones(_ J: String, _ S: String) -> Int {
    let jewels = Set(J)
    var count = 0;
    
    for i in Array(S) {
        if jewels.contains(i) {
            count += 1
        }
    }
    
    return count
}

class Tests: XCTestCase {
    func testOne() {
        let expected = 3
        let actual = numJewelsInStones("aA", "aAAbbbb")
        
        XCTAssertEqual(expected, actual)
    }
    
    func testTwo() {
        let expected = 0
        let actual = numJewelsInStones("z", "ZZ")
        
        XCTAssertEqual(expected, actual)
    }
}

Tests.defaultTestSuite.run()
