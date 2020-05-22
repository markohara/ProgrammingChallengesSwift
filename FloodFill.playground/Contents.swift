import UIKit
import XCTest

// Leetcode 733. Flood Fill
//https://leetcode.com/problems/flood-fill/

func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
    var image = image;
    var visited = Array(repeating: Array(repeating: false, count: image[0].count), count: image.count)
    let prevColor = image[sr][sc]
    floodFill(&image,&visited, sr, sc, prevColor, newColor)
    
    return image
}

func floodFill(_ image: inout [[Int]], _ visited: inout [[Bool]], _ r: Int, _ c: Int, _ prevColor: Int, _ newColor: Int) {
    
    func shouldNavigate(_ valid: Bool, _ r: Int, _ c: Int) -> Bool {
        return valid && image[r][c] == prevColor && !visited[r][c]
    }
    
    if image[r][c] == prevColor && !visited[r][c] {
        visited[r][c] = true
        image[r][c] = newColor
        
        //to the left
        if shouldNavigate(c-1 >= 0, r, c-1) {
            floodFill(&image, &visited, r, c-1, prevColor, newColor)
        }
        //to the right
        if shouldNavigate(c+1 < image[0].count, r, c+1) {
            floodFill(&image, &visited, r, c+1, prevColor, newColor)
        }
        //above
        if shouldNavigate(r-1 >= 0, r-1, c){
            floodFill(&image, &visited, r-1, c, prevColor, newColor)
        }
        //below
        if shouldNavigate(r+1 < image.count, r+1, c) {
            floodFill(&image, &visited, r+1, c, prevColor, newColor)
        }
    }
}

class Tests: XCTestCase {
    func testOne() {
        let actual = floodFill([[1,1,1],[1,1,0],[1,0,1]], 1, 1, 2)
        let expected = [[2,2,2],[2,2,0],[2,0,1]]
        XCTAssertEqual(actual, expected)
    }

    func testTwo() {
        let actual = floodFill([[0,0,0],[0,1,1]], 1, 1, 1)
        let expected = [[0,0,0],[0,1,1]]
        XCTAssertEqual(actual, expected)
    }
}

Tests.defaultTestSuite.run()

