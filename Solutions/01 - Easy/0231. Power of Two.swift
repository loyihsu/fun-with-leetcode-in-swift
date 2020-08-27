// Problem: https://leetcode.com/problems/power-of-two/

class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        guard n > 0 else { return false }
        var res = n
        while res % 2 == 0 {
            res /= 2
        }
        return res == 1
    }
}
