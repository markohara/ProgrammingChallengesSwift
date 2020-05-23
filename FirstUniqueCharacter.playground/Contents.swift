import Foundation
import XCTest

//LeetCode 387. First Unique Character in a String
//https://leetcode.com/problems/first-unique-character-in-a-string/
func firstUniqChar(_ s: String) -> Int {
    var charCount = [Character: Int]()
    
    for char in Array(s) {
        charCount[char] = (charCount[char] ?? 0) + 1
    }
    
    for (i, char) in Array(s).enumerated() {
        if charCount[char]! == 1 {
            return i
        }
    }
    
    return -1
}

class Tests: XCTestCase {
    func testOne() {
        let expected = 0
        let actual = firstUniqChar("leetcode")
        
        XCTAssertEqual(expected, actual)
    }
    
    func testTwo() {
        let expected = 2
        let actual = firstUniqChar("loveleetcode")
        
        XCTAssertEqual(expected, actual)
    }
}

Tests.defaultTestSuite.run()
