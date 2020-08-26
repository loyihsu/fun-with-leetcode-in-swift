// Problem: https://leetcode.com/problems/count-primes/

class Solution {
    func countPrimes(_ n: Int) -> Int {
        guard n >= 2 else { return 0 }
        
        var map = [Int : Bool](), count = 0
        for i in 2..<n where map[i] == nil {
            map[i] = true
            count += 1
                
            var tempCount = 2, temp = i
            while temp * tempCount <= n {
                map[temp*tempCount] = false
                tempCount += 1
            }
        }
        
        return count
    }
}
