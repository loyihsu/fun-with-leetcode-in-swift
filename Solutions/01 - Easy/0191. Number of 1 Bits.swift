// Problem: https://leetcode.com/problems/number-of-1-bits/

class Solution {
    func hammingWeight(_ n: Int) -> Int {
        var count = 0, num = n
        while num != 0 {
            num &= num - 1
            count += 1
        }
        return count
    }

    func anotherHammingWeight(_ n: Int) -> Int {
        var count = 0, n = n
        while n != 0 {
            count += n % 2
            n /= 2
        }
        return count
    }
}
