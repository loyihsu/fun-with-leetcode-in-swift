// Problem: https://leetcode.com/problems/bitwise-and-of-numbers-range/

class Solution {
    func rangeBitwiseAnd(_ m: Int, _ n: Int) -> Int {
        var n = n
        while m < n {
            n &= (n-1)
        }
        return n
    }
}
