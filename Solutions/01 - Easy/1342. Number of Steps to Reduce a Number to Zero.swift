// Problem: https://leetcode.com/problems/number-of-steps-to-reduce-a-number-to-zero/

class Solution {
    func numberOfSteps (_ num: Int) -> Int {
        var n = num, steps = 0
        while n != 0 {
            if n % 2 == 0 {
                n /= 2
            } else {
                n -= 1
            }
            steps += 1
        }
        return steps
    }
}
