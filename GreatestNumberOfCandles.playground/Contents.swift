import Foundation
import XCTest

//LeetCode 1431. Kids With the Greatest Number of Candies
//https://leetcode.com/problems/kids-with-the-greatest-number-of-candies/
func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
    var result = [Bool]()
    var max = 0
    
    for i in candies where i > max {
        max = i
    }
    
    for i in candies {
        let ans = i + extraCandies >= max ? true : false
        result.append(ans)
    }
    
    return result
}

class Tests: XCTestCase {
    func testOne() {
        let expected = [true,true,true,false,true]
        let actual = kidsWithCandies([2,3,5,1,3], 3)
        
        XCTAssertEqual(expected, actual)
    }
    
    func testTwo() {
        let expected = [true,false,false,false,false]
        let actual = kidsWithCandies([4,2,1,1,2], 1)
        
        XCTAssertEqual(expected, actual)
    }
    
    func testThree() {
        let expected = [true,false,true]
        let actual = kidsWithCandies([12,1,12], 10)
        
        XCTAssertEqual(expected, actual)
    }
}
Tests.defaultTestSuite.run()
