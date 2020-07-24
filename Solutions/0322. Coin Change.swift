// Problem: https://leetcode.com/problems/coin-change/
// Inspired by discussion by @stasost (https://leetcode.com/problems/coin-change/discuss/673586/Swift-%2B-Sort-%2B-DP) 

class Solution {    
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        guard coins.count > 0 else { return -1 }
        guard amount > 0 else { return 0 }
        
        let max = amount + 1
        var chart = [Int](repeating: max, count: max)
        chart[0] = 0
        
        for current in 1...amount {
            for coin in coins where coin <= current {
                chart[current] = min(chart[current], 1 + chart[current-coin])
            }
        }
        
        return chart[amount] < max ? chart[amount] : -1
    }
}
