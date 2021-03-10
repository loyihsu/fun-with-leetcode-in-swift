// Problem: https://leetcode.com/problems/convert-integer-to-the-sum-of-two-no-zero-integers/

class Solution {
    func containsZero(_ n: Int) -> Bool {
        guard n != 0 else { return true }
        var n = n
        while n > 0 {
            if n % 10 == 0 {
                return true
            }
            n /= 10
        }
        return false
    }
    func getNoZeroIntegers(_ n: Int) -> [Int] {
        var a = 1
        while containsZero(a) || containsZero(n-a) {
            a += 1
        }
        return [a, n-a]
    }
}
