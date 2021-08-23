// Problem: https://leetcode.com/problems/find-greatest-common-divisor-of-array/

class Solution {
    func gcd(a: Int, b: Int) -> Int {
        if a == 0 {
            return b
        }
        return gcd(a: b%a, b: a)
    }
    func findGCD(_ nums: [Int]) -> Int {
        var (min, max) = (Int.max, Int.min)
        for item in nums {
            if item < min {
                min = item
            }
            if item > max {
                max = item
            }
        }
        return gcd(a: min, b: max)
    }
}
