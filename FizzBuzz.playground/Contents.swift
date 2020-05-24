import Foundation

//LeetCode 412. Fizz Buzz
//https://leetcode.com/problems/fizz-buzz/
func fizzBuzz(_ n: Int) -> [String] {
    var result = [String]()
    
    for i in 1...n {
        var element = String()
        
        if i % 3 == 0 {
            element += "Fizz"
        }
        
        if i % 5 == 0 {
            element += "Buzz"
        }
        
        if element.isEmpty {
            element += "\(i)"
        }
        
        result += [element]
    }
    
    return result
}

print(fizzBuzz(15))
