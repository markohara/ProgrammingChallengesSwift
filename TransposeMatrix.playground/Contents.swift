import UIKit
import XCTest

// leetcode 867. Transpose Matrix
// https://leetcode.com/problems/transpose-matrix/

// Time: O(N^2)
func transpose(_ A: [[Int]]) -> [[Int]] {
    var transposed = Array(repeating:Array(repeating: 0, count:A.count), count: A[0].count)
        
    for (i, row) in A.enumerated() {
        for (pos, val) in row.enumerated() {
            transposed[pos][i] = val
        }
    }
    
    return transposed
}

class Tests: XCTestCase {
    func testEvenTranspose() {
        let actual = transpose([[1,2,3],[4,5,6],[7,8,9]])
        let expected = [[1,4,7],[2,5,8],[3,6,9]]
        XCTAssertEqual(actual, expected)
    }

    func testUnevenTranspose() {
        let actual = transpose([[1,2,3], [4,5,6]])
        let expected = [[1,4],[2,5],[3,6]]
        XCTAssertEqual(actual, expected)
    }
}

Tests.defaultTestSuite.run()
