// Problem: https://leetcode.com/problems/calculate-money-in-leetcode-bank/

class Solution {
    func totalMoney(_ n: Int) -> Int {
        var output = 0
        for count in 0 ..< n {
            output += count % 7 + 1 + count / 7
        }
        return output
    }
}
