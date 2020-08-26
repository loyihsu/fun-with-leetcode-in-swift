// Problem: https://leetcode.com/problems/arranging-coins/

class Solution {
    func arrangeCoins(_ n: Int) -> Int {
        guard n > 1 else { return n }
        var count = 0, temp = n
        
        while temp >= count + 1 {
            temp -= (count + 1)
            count += 1
        }
        
        return count
    }
}
