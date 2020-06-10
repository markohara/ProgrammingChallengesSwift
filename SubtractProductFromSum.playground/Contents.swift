import Foundation
import XCTest

//LeetCode 1281. Subtract the Product and Sum of Digits of an Integer
//https://leetcode.com/problems/subtract-the-product-and-sum-of-digits-of-an-integer/
func subtractProductAndSum(_ n: Int) -> Int {
    var n = n
    var p = 1
    var s = 0
    
    while n > 0 {
        p *= n % 10
        s += n % 10
        
        n = n / 10
    }

    return p - s
}

class Tests: XCTestCase {
    func testOne() {
        let expected = 15
        let actual = subtractProductAndSum(234)
        
        XCTAssertEqual(expected, actual)
    }
    
    func testTwo() {
        let expected = 21
        let actual = subtractProductAndSum(4421)

        XCTAssertEqual(expected, actual)
    }
}
Tests.defaultTestSuite.run()
