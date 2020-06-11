import Foundation
import XCTest

//LeetCode 1450. Number of Students Doing Homework at a Given Time
//https://leetcode.com/problems/number-of-students-doing-homework-at-a-given-time/
func busyStudent(_ startTime: [Int], _ endTime: [Int], _ queryTime: Int) -> Int {
    
    var count = 0
    
    for i in 0..<startTime.count {
        if (startTime[i]...endTime[i]).contains(queryTime) {
            count += 1
        }
    }
    
    return count
}

class Tests: XCTestCase {
    func testOne() {
        let expected = 1
        let actual = busyStudent([1,2,3], [3,2,7], 4)
        
        XCTAssertEqual(expected, actual)
    }
    
    func testTwo() {
        let expected = 1
        let actual = busyStudent([4], [4], 4)
        
        XCTAssertEqual(expected, actual)
    }
    
    func testThree() {
        let expected = 0
        let actual = busyStudent([4], [4], 5)
        
        XCTAssertEqual(expected, actual)
    }
    
    func testFour() {
        let expected = 0
        let actual = busyStudent([1,1,1,1], [1,3,2,4], 7)
        
        XCTAssertEqual(expected, actual)
    }
    
    func testFive() {
        let expected = 5
        let actual = busyStudent([9,8,7,6,5,4,3,2,1], [10,10,10,10,10,10,10,10,10], 5)
        
        XCTAssertEqual(expected, actual)
    }
}
Tests.defaultTestSuite.run()
