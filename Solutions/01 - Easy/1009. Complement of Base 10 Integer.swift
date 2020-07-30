// Problem: https://leetcode.com/problems/complement-of-base-10-integer/

class Solution {
    func bitwiseComplement(_ N: Int) -> Int {
        guard N > 0 else { return 1 }
        var power = 1, n = N, output = 0
        
        while n > 1 {
            output += (n % 2 == 1 ? 0 : 1) * power
            power *= 2
            n /= 2
        }
        
        return output
    }
}
