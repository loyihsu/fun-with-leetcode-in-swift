// Problem: https://leetcode.com/problems/factorial-trailing-zeroes/

class Solution {
    func trailingZeroes(_ n: Int) -> Int {
        var count = 0, temp = n
        while temp >= 5 {
            temp /= 5
            count += temp
        }
        return count
    }
}
