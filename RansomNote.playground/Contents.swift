import Foundation
import XCTest

//LeetCode 383. Ransom Note
//https://leetcode.com/problems/ransom-note/
func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
    var availableCharacters = [Character: Int]()
    
    for char in Array(magazine) {
        if let amount = availableCharacters[char] {
            availableCharacters[char] = amount + 1
        } else {
            availableCharacters[char] = 1
        }
    }
    
    for char in Array(ransomNote) {
        if let avaAmount = availableCharacters[char] {
            let newAmount = avaAmount - 1
            if newAmount < 0 {
                return false
            }
            
            availableCharacters[char] = newAmount
        } else {
            //If character not in map return false
            return false
        }
    }
    
    return true
}

class Tests: XCTestCase {
    func testOne() {
        let expected = false
        let actual = canConstruct("a", "b")
        
        XCTAssertEqual(expected, actual)
    }
    
    func testTwo() {
        let expected = false
        let actual = canConstruct("aa", "ab")
        
        XCTAssertEqual(expected, actual)
    }
    
    func testThree() {
        let expected = true
        let actual = canConstruct("aa", "aab")
        
        XCTAssertEqual(expected, actual)
    }
}

Tests.defaultTestSuite.run()
