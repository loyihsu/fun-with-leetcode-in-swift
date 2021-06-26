// https://leetcode.com/problems/sum-of-digits-in-base-k/

class Solution {
    func sumBase(_ n: Int, _ k: Int) -> Int {
        var n = n, output = 0
        while n > 0 {
            output += n % k
            n /= k
        }
        return output
    }
}
