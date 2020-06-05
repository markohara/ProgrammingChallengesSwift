import Foundation
import XCTest

//LeetCode 204. Count Primes
//https://leetcode.com/problems/count-primes/
func countPrimes(_ n: Int) -> Int {
    (1...n).filter(isPrime).count
}

func isPrime(_ n: Int) -> Bool {
    n > 1 && !(2..<n).contains {n % $0 == 0}
}

class Tests: XCTestCase {
    func testOne() {
        let expected = 25
        let actual = countPrimes(100)
        
        XCTAssertEqual(expected, actual)
    }
    
    func testTwo() {
        let expected = false
        let actual = isPrime(1)
        
        XCTAssertEqual(expected, actual)
    }
    
    func testThree() {
        let expected = true
        let actual = isPrime(2)
        
        XCTAssertEqual(expected, actual)
    }
}
Tests.defaultTestSuite.run()
