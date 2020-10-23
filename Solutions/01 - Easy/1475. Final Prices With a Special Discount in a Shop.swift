// Problem: https://leetcode.com/problems/final-prices-with-a-special-discount-in-a-shop/

class Solution {
    func finalPrices(_ prices: [Int]) -> [Int] {
        var output = prices
        for (index, price) in prices.enumerated() {
            for jndex in index+1..<prices.count where prices[jndex] <= price {
                output[index] -= prices[jndex]
                break
            }
        }
        return output
    }
}
