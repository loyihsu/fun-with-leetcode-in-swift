// Problem: https://leetcode.com/problems/ugly-number/description/

class Solution {
    func isUgly(_ n: Int) -> Bool {
        guard n > 0 else { return false }
        var cursor = n
        var isFailed = false

        while !isFailed && cursor != 1 {
            if cursor.isMultiple(of: 2) {
                cursor /= 2
            } else if cursor.isMultiple(of: 3) {
                cursor /= 3
            } else if cursor.isMultiple(of: 5) {
                cursor /= 5
            } else {
                isFailed = true
            }
        }

        return !isFailed
    }
}
