// Problem: https://leetcode.com/problems/sqrtx/

class Solution {
    func mySqrt(_ x: Int) -> Int {
        guard x >= 2 else { return x }
        var output = -1, left = 0,  right = x, mid = -1, cal = -1
        while left <= right {
            mid = (left + right) / 2
            cal = mid * mid
            if cal == x {
                output = mid
                break
            } else if cal > x {
                right = mid - 1
            } else if cal < x {
                output = mid
                left = mid + 1
            }
        }
        return output
    }
}
