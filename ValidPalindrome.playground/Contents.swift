import UIKit
import XCTest

func isPalindrome(_ s: String) -> Bool {
    
    if (s.count <= 1) {return true}
    
    let c = Array(s.lowercased())
    var fp = 0
    var bp = c.count-1
    
    while(fp <= bp) {
        if c[fp] != c[bp]{
            return false
        }
        
        fp += 1; bp -= 1
    }
    
    return true
}

class Tests: XCTestCase {
    //Finds it to be a palindrome
    func testOne() {
        let expected = true
        let actual = isPalindrome("racecar")

        XCTAssertEqual(actual, expected)
    }

    //Checks to ensure capitals are ignored
    func testTwo() {
        let expected = true
        let actual = isPalindrome("Racecar")

        XCTAssertEqual(actual, expected)
    }

    //Checks to ensure that non palidromes are detected
    func testThree() {
        let expected = false
        let actual = isPalindrome("dog")

        XCTAssertEqual(actual, expected)
    }
}

Tests.defaultTestSuite.run()
