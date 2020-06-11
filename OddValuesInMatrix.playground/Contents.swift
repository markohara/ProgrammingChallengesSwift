import Foundation
import XCTest

//LeetCode 1252. Cells with Odd Values in a Matrix
//https://leetcode.com/problems/cells-with-odd-values-in-a-matrix/
func oddCells(_ n: Int, _ m: Int, _ indices: [[Int]]) -> Int {
    var matrix = Array(repeating: Array(repeating: 0,count: m),count: n)
    
    for i in indices {
        let row = i[0]; let col = i[1]
        
        for c in 0..<m { matrix[row][c] += 1 }
        for r in 0..<n { matrix[r][col] += 1 }
    }
    
    var oddCount = 0
    for row in 0..<n {
        for column in 0..<m {
            if matrix[row][column] % 2 != 0 {
                oddCount += 1
            }
        }
    }
    
    return oddCount
}

class Tests: XCTestCase {
    func testOne() {
        let expected = 6
        let actual = oddCells(2, 3, [[0,1],[1,1]])
        
        XCTAssertEqual(expected, actual)
    }
    
    func testTwo() {
        let expected = 0
        let actual = oddCells(2, 2, [[1,1],[0,0]])
        
        XCTAssertEqual(expected, actual)
    }
}
Tests.defaultTestSuite.run()
