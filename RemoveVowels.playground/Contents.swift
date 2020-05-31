import Foundation
import XCTest

func removeVowels(from str: String) -> String {
    let vowels = Set("aeiou")
    var outputArr = [Character]()
    
    for char in str.lowercased() {
        if vowels.contains(char) {
            continue
        }
        
        outputArr.append(char)
    }
    
    return String(outputArr)
}

class Tests: XCTestCase {
    func testOne() {
        let expected = "ppl"
        let actual = removeVowels(from: "Apple")
        
        XCTAssertEqual(expected, actual)
    }
    
    func testTwo() {
        let expected = ""
        let actual = removeVowels(from: "aeiou")
        
        XCTAssertEqual(expected, actual)
    }
    
    func testThree() {
        let expected = ""
        let actual = removeVowels(from: "AEIOU")
        
        XCTAssertEqual(expected, actual)
    }
}
Tests.defaultTestSuite.run()
