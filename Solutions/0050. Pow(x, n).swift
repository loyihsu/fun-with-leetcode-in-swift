// Problem: https://leetcode.com/problems/powx-n/

class Solution {
    func myPow(_ x: Double, _ n: Int) -> Double {
        if n == 0 {
            return 1
        }
        
        var number = x, power = n
        
        if n < 0 {
            power = -power
            number = 1 / number
        }
        
        if power % 2 == 0 {
            return myPow(number * number, power / 2)
        } else {
            return number * myPow(number * number, power / 2)
        }
    }
}
