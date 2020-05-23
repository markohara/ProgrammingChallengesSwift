import UIKit
import XCTest

// LeetCode 463. Island Perimeter
// https://leetcode.com/problems/island-perimeter/

// Time: O(N^2)
func islandPerimeter(_ grid: [[Int]]) -> Int {
    var perimeter = 0
    
    for (i_row, row) in grid.enumerated() {
        for (i_col, val) in row.enumerated() {
            if val == 1 {
                perimeter += 4
                
                if i_row > 0 && grid[i_row - 1][i_col] == 1 {
                    perimeter -= 2
                }

                if i_col > 0 && grid[i_row][i_col-1] == 1 {
                    perimeter -= 2
                }
            }
        }
    }
    
    return perimeter
}

class Tests: XCTestCase {
    func testOne() {
        let actual = islandPerimeter([[0,1,0,0],[1,1,1,0],[0,1,0,0],[1,1,0,0]])
        let expected = 16
        XCTAssertEqual(actual, expected)
    }
}

Tests.defaultTestSuite.run()
