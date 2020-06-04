import Foundation
import XCTest

//LeetCode 28. Implement strStr()
//https://leetcode.com/problems/implement-strstr
func strStr(_ haystack: String, _ needle: String) -> Int {
    guard needle.count > 0 else { return 0}
    
    let needle = ArraySlice(needle)
    let haystack = Array(haystack)
    
    for i in 0...haystack.count {
        guard (i + needle.count) <= haystack.count else { break }
        let frame = haystack[i..<(i + needle.count)]
        
        if frame == needle {
            return i
        }
    }
    return -1
}

class Tests: XCTestCase {
    func testOne() {
        let expected = 2
        let actual = strStr("hello", "ll")

        XCTAssertEqual(expected, actual)
    }

    func testTwo() {
        let expected = -1
        let actual = strStr("aaaaa", "ba")

        XCTAssertEqual(expected, actual)
    }

    func testThree() {
        let expected = 0
        let actual = strStr("a", "a")

        XCTAssertEqual(expected, actual)
    }
}
Tests.defaultTestSuite.run()
