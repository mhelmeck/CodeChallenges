/*
    Write an algorithm to determine if a number n is happy.

    A happy number is a number defined by the following process:

    - Starting with any positive integer, replace the number by the sum of the squares of its digits.
    - Repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1.
    - Those numbers for which this process ends in 1 are happy.
     
    Return true if n is a happy number, and false if not.
 */

class Solution {
    func isHappy(_ n: Int) -> Bool {
        var numb = n
        var set = Set<Int>()
        
        while true {
            numb = numberToDigits(numb)
                .map { $0 * $0 }
                .reduce(0) { $0 + $1 }
            
            if numb == 1 {
                return true
            }

            if set.contains(numb) {
                return false
            }
            
            set.insert(numb)
        }
    }
    
    private func numberToDigits(_ n: Int) -> [Int] {
        var numb = n
        var result = [Int]()
        
        while numb > 0 {
            result.append(numb % 10)
            numb /= 10
        }
        
        return result
    }
}

// Test:

let solution = Solution()
let n_1 = 19
let n_2 = 2

for n in [n_1, n_2] {
    print(solution.isHappy(n))
}
