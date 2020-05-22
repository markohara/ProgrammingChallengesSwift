import Foundation
import XCTest

//Leetcode 344. Reverse String
//https://leetcode.com/problems/reverse-string/
func reverseString(_ s: inout [Character]) {
     var fp = 0
     var bp = s.count-1
    
     while(fp < bp) {
         let temp = s[fp]
         s[fp] = s[bp]
         s[bp] = temp
        
         fp += 1; bp -= 1
     }
}

class Tests: XCTestCase {
    func testCaseOne() {
        var actual: [Character] = ["h","e","l","l","o"]
        let expected: [Character] = ["o","l","l","e","h"]
        
        reverseString(&actual)
        XCTAssertEqual(actual, expected)
    }
    
    func testCaseTwo() {
        var actual: [Character] = ["H","a","n","n","a","h"]
        let expected: [Character] = ["h","a","n","n","a","H"]
        
        reverseString(&actual)
        XCTAssertEqual(actual, expected)
    }
}

Tests.defaultTestSuite.run()
