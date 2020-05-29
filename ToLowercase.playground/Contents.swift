import Foundation
import XCTest

//LeetCode 709. To Lower Case
//https://leetcode.com/problems/to-lower-case/
func toLowerCase(_ str: String) -> String {
    var res = [Character]()
    for i in str {
        if (65...92).contains(i.asciiValue!) {
            res.append(Character(UnicodeScalar(i.asciiValue! + 32)))
            continue
        }
        
        res.append(i)
    }
    
    return String(res)
}

class Tests: XCTestCase {
    func testOne() {
        let expected = "az"
        let actual = toLowerCase("AZ")
        
        XCTAssertEqual(expected, actual)
    }
    
    func testTwo() {
        let expected = "hello"
        let actual = toLowerCase("Hello")
        
        XCTAssertEqual(expected, actual)
    }
    
    func testThree() {
        let expected = "here"
        let actual = toLowerCase("here")
        
        XCTAssertEqual(expected, actual)
    }
    
    func testFour() {
        let expected = "lovely"
        let actual = toLowerCase("LOVELY")
        
        XCTAssertEqual(expected, actual)
    }
}
Tests.defaultTestSuite.run()
