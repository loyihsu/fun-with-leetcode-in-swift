// Problem: https://leetcode.com/problems/final-prices-with-a-special-discount-in-a-shop/

class Solution {
    func finalPrices(_ prices: [Int]) -> [Int] {
        var output = prices
        
        for (i, price) in prices.enumerated() {
            for j in i+1..<prices.count {
                if prices[j] <= price {
                    output[i] -= prices[j]
                    break
                }
            }
        } 
        
        return output
    }
}
