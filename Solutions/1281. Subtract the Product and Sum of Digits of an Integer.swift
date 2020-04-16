// Problem: https://leetcode.com/problems/subtract-the-product-and-sum-of-digits-of-an-integer/

class Solution {
    func subtractProductAndSum(_ n: Int) -> Int {
        var arr = [Int]()
        var num = n
        
        var mul = 1
        var sum = 0
        
        while num != 0 {
            arr.append(num % 10)
            num /= 10
        }
        
        for a in arr {
            mul *= a
            sum += a
        }
        
        return mul - sum
    }
}
