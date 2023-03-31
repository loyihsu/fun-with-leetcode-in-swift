// Problem: https://leetcode.com/problems/power-of-two/

class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        n > 0 && (n & (n - 1)) == 0
    }
}
