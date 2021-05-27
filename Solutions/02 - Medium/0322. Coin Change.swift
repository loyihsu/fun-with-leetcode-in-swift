// Problem: https://leetcode.com/problems/coin-change/

class Solution {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        guard coins.count > 0 else { return -1 }
        guard amount > 0 else { return 0 }

        let max = amount + 1
        var chart = [Int](repeating: max, count: max)
        chart[0] = 0

        for coin in coins where coin <= amount {
            for current in coin..<max {
                chart[current] = min(chart[current], 1 + chart[current-coin])
            }
        }

        return chart[amount] < max ? chart[amount] : -1
    }
}
