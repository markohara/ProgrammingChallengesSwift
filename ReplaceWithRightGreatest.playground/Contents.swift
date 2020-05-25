import Foundation
import XCTest

//LeetCode 1299. Replace Elements with Greatest Element on Right Side
//https://leetcode.com/problems/replace-elements-with-greatest-element-on-right-side/
func replaceElements(_ arr: [Int]) -> [Int] {
    var res = [Int]()
    
    for curr in 0..<arr.count {
        var greatest = curr == arr.count - 1 ? -1 : arr[curr+1]
        
        if curr != arr.count - 1 {
            for i in curr+2..<arr.count {
                if arr[i] > greatest {
                    greatest = arr[i]
                }
            }
        }
        res.append(greatest)
    }
    
    return res
}

class Tests: XCTestCase {
    func testOne() {
        let expected = [18,6,6,6,1,-1]
        let actual = replaceElements([17,18,5,4,6,1])
        
        XCTAssertEqual(expected, actual)
    }
}
Tests.defaultTestSuite.run()
