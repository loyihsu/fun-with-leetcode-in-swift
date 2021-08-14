// Problem: https://leetcode.com/problems/three-divisors/

class Solution {
    func isThree(_ n: Int) -> Bool {
        guard n > 2 else { return false }
        let root = Int(sqrt(Double(n)))
        var count = 0
        for num in 1...root {
            if n % num == 0 {
                count += 1
                if n / num != num {
                    count += 1
                }
            }
            if count > 3 {
                return false
            }
        }
        return count == 3
    }
}
