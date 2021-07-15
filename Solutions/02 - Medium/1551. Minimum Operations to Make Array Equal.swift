// Problem: https://leetcode.com/problems/minimum-operations-to-make-array-equal/

class Solution {
    func minOperations(_ n: Int) -> Int {
        var target = 0, operations = 0
        for idx in 0..<n {
            target += idx * 2 + 1
        }
        target = target / n
        for idx in 0..<n/2 {
            operations += target - (idx * 2 + 1)
        }
        return operations
    }
}
