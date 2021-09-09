// Problem: https://leetcode.com/problems/counting-bits/

class Solution {
    func countBits(_ n: Int) -> [Int] {
        var output = [Int](repeating: 0, count: n + 1)
        (0...n).forEach { output[$0] = output[$0 / 2] + ($0 % 2 == 0 ? 0 : 1) }
        return output
    }
}
