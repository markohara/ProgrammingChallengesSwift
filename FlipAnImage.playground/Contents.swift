import Foundation
import XCTest

func flip(_ arr: [Int]) -> [Int] {
    var arr = arr
    var fp = 0;
    var bp = arr.count - 1
    
    while fp < bp {
        if arr[fp] != arr[bp] {
            arr.swapAt(fp, bp)
        }
        
        fp += 1
        bp -= 1
    }
    
    return arr
}

func invert(_ arr: [Int]) -> [Int] {
    var result = [Int]()
    
    for i in arr {
        result.append(i == 0 ? 1 : 0)
    }
    
    return result
}

func flipAndInvertImage(_ A: [[Int]]) -> [[Int]] {
    var result = [[Int]]()
    for arr in A {
        result.append(invert(flip(arr)))
    }
    
    return result
}

class Tests: XCTestCase {
    func testOne() {
        let expected = [[1,0,0],[0,1,0],[1,1,1]]
        let actual = flipAndInvertImage([[1,1,0],[1,0,1],[0,0,0]])
        
        XCTAssertEqual(expected, actual)
    }
    
    func testTwo() {
        let expected = [[1,1,0,0],[0,1,1,0],[0,0,0,1],[1,0,1,0]]
        let actual = flipAndInvertImage([[1,1,0,0],[1,0,0,1],[0,1,1,1],[1,0,1,0]])
        
        XCTAssertEqual(expected, actual)
    }
}
Tests.defaultTestSuite.run()
