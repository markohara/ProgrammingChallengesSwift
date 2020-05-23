import Foundation
import XCTest

//LeetCode 476. Number Complement
//https://leetcode.com/problems/number-complement/
func findComplement(_ num: Int) -> Int {
    let binary = String(num, radix: 2)
    let res = binary.reduce(""){ text, next in
        let n = next == "0" ? "1" : "0"
        return "\(text)\(n)"
    }
    
    return Int(res, radix: 2)!
}

class Tests: XCTestCase {
    func testOne() {
        let expected = 2
        let actual = findComplement(5)
        
        XCTAssertEqual(expected, actual)
    }
    
    func testTwo() {
        let expected = 0
        let actual = findComplement(1)
        
        XCTAssertEqual(expected, actual)
    }
}

Tests.defaultTestSuite.run()
