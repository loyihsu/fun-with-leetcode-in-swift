// Problem: https://leetcode.com/problems/n-th-tribonacci-number/

class Solution {
    func tribonacci(_ n: Int) -> Int {
        var window = (0, 1, 1)
        guard n != 0 else {
            return 0
        }
        guard n != 1 && n != 2 else {
            return 1
        }
        for idx in 0..<n-2 {
            window = (window.1, window.2, window.0 + window.1 + window.2)
        }
        return window.2
    }
}
