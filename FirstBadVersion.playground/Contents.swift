import Foundation

/**
* The knows API is defined in the parent class VersionControl.
*     func isBadVersion(_ version: Int) -> Bool{}
*/

func isBadVersion(_ version: Int) -> Bool { true }

//LeetCode 278. First Bad Version
//https://leetcode.com/problems/first-bad-version/
func firstBadVersion(_ n: Int) -> Int {
    var fp = 0
    var bp = n
    
    while (fp < bp) {
        let mid = (fp+bp)/2
        
        if isBadVersion(mid) {
            bp = mid
        } else {
            fp = mid + 1
        }
    }
    
    return fp
}
