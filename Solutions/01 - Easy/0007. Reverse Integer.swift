// Problem: https://leetcode.com/problems/reverse-integer/

class Solution {
    func reverse(_ x: Int) -> Int {
        var num = x > 0 ? x : -x, res = 0
        while num > 0 {
            res = res * 10 + num % 10
            num /= 10
        }
        res = x > 0 ? res : -res
        return res > 2147483647 || res < -2147483648 ? 0 : res
    }
}
