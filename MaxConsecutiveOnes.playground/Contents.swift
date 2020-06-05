import Foundation
import XCTest

//485. Max Consecutive Ones
//https://leetcode.com/problems/max-consecutive-ones/
func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
    var currentHighest = 0
    var currentOnes = 0
    for i in nums {
        if i == 0 {
            if currentOnes > currentHighest {
                currentHighest = currentOnes
            }
            currentOnes = 0
            continue
        }
        
        currentOnes += 1
    }
    
    return max(currentOnes, currentHighest)
}

class Tests:XCTestCase {
    func testOne() {
        let expected = 3
        let actual = findMaxConsecutiveOnes([1,1,0,1,1,1])
        
        XCTAssertEqual(expected, actual)
    }
}
Tests.defaultTestSuite.run()
