// Problem: https://leetcode.com/problems/number-of-1-bits/

class Solution {
    func hammingWeight(_ n: Int) -> Int {
        var output = 0
        for count in 0..<32 {
            let testcase = 1 << count
            if testcase & n != 0 {
                output += 1
            }
        }
        return output
    }
}
