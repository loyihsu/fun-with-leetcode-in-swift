// Problem: https://leetcode.com/problems/best-time-to-buy-and-sell-stock/

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var min = Int.max, result = 0
        for value in prices {
            if value < min {
                min = value
            } else if result < value - min {
                result = value - min
            }
        }
        return result
    }
}
