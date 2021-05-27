// Problem: https://leetcode.com/problems/coin-change-2/

class Solution {
    func change(_ amount: Int, _ coins: [Int]) -> Int {
        guard amount > 0 else { return 1 }
        guard coins.count > 0 else { return 0 }

        var result = [Int](repeating: 0, count: amount + 1)
        result[0] = 1

        for coin in coins where coin <= amount {
            for current in coin...amount {
                result[current] += result[current - coin]
            }
        }

        return result[amount]
    }
}
