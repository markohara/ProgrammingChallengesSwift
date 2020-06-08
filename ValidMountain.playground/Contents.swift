import Foundation
import XCTest

//LeetCode 941. Valid Mountain Array
//https://leetcode.com/problems/valid-mountain-array/
func validMountainArray(_ A: [Int]) -> Bool {
    guard A.count > 2 else { return false}
    var fp = 0
    var bp = A.count - 1
    
    while fp + 1 < A.count - 1 && A[fp] < A[fp + 1] {
        fp += 1
    }
    
    while bp > 0 && A[bp] < A[bp - 1] {
        bp -= 1
    }
    
    return fp == bp && fp > 0 && bp < A.count - 1
}

class Tests: XCTestCase {
    func testOne() {
        let expected = true
        let actual = validMountainArray([0,2,3,4,5,2,1,0])

        XCTAssertEqual(expected, actual)
    }
    
    func testTwo() {
        let expected = false
        let actual = validMountainArray([2,1])

        XCTAssertEqual(expected, actual)
    }
    
    func testThree() {
        let expected = false
        let actual = validMountainArray([3,5,5])

        XCTAssertEqual(expected, actual)
    }
    
    func testFour() {
        let expected = true
        let actual = validMountainArray([0,3,2,1])

        XCTAssertEqual(expected, actual)
    }
}
Tests.defaultTestSuite.run()
