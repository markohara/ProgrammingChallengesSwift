import Foundation
import XCTest

//LeetCode 728. Self Dividing Numbers
//https://leetcode.com/problems/self-dividing-numbers/
func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
    var result = [Int]()
    
    for i in left...right {
        if i.isSelfDividing() {
            result.append(i)
        }
    }
    
    return result
}

extension Int {
    func isSelfDividing() -> Bool {
        for char in String(self) {
            let digit = Int(String(char))!
            if digit == 0 || self % digit != 0 {
                return false
            }
        }
        
        return true
    }
}

class Tests: XCTestCase {
    func testOne() {
        let expected = [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15, 22]
        let actual = selfDividingNumbers(1, 22)
        
        XCTAssertEqual(expected, actual)
    }
}
Tests.defaultTestSuite.run()
