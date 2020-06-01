import Foundation
import XCTest

//Leetcode 1108. Defanging an IP Address
//https://leetcode.com/problems/defanging-an-ip-address/
func defangIPaddr(_ address: String) -> String {
    var output = [Character]()
    for i in address {
        if i == "." {
            output.append(contentsOf: ["[", ".", "]"])
            continue
        }
        
        output.append(i)
    }
    
    return String(output)
}

class Tests: XCTestCase {
    func testOne() {
        let expected = "1[.]1[.]1[.]1"
        let actual = defangIPaddr("1.1.1.1")
        
        XCTAssertEqual(expected, actual)
    }
    
    func testTwo() {
        let expected = "255[.]100[.]50[.]0"
        let actual = defangIPaddr("255.100.50.0")
        
        XCTAssertEqual(expected, actual)
    }
}
Tests.defaultTestSuite.run()
