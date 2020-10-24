// Problem: https://leetcode.com/problems/number-complement/

class Solution {
    func findComplement(_ num: Int) -> Int {
        var n = num, output = 0, power = 1
        while n > 1 {
            output += (n % 2 == 0 ? 1 : 0) * power
            power *= 2
            n /= 2
        }
        return output
    }
}
