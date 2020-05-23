// Problem: https://leetcode.com/problems/maximum-69-number/

class Solution {
    func power(_ base: Int, _ power: Int) -> Int {
        var output = 1
        var p = power
        
        while p > 0 {
            output *= base            
            p -= 1
        }
        
        return output
    }
    
    func maximum69Number (_ num: Int) -> Int {
        var ints = [Int]()
        var n = num
        var output = 0
        
        while n > 0 {
            ints.insert(n % 10, at: 0)
            n /= 10
        }
        
        for (index, value) in ints.enumerated() {
            if value == 6 {
                ints[index] = 9
                break
            }
        }
        
        var length = ints.count
        
        for (index, value) in ints.enumerated() {
            output += value * power(10, length - index - 1)
        }
     
        return output
    }
}
