// Problem: https://leetcode.com/problems/climbing-stairs/

class Solution {
    func climbStairs(_ n: Int) -> Int {
        guard n != 1 else { return 1 }
        guard n != 2 else { return 2 }
        var gen = (1, 2), times = n - 2
        while times > 0 {
            gen = (gen.1, gen.0+gen.1)
            times -= 1
        }
        return gen.1
    }
}
