// Problem: https://leetcode.com/problems/maximum-number-of-coins-you-can-get/

class Solution {
    func maxCoins(_ piles: [Int]) -> Int {
        var restPile = piles.sorted(), sum = 0
        
        while restPile.isEmpty == false {
            for index in 0..<2 {
                if index == 1 {
                    sum += restPile.popLast()!
                } else {
                    restPile.popLast()
                }
            }
            
            restPile.removeFirst()
        }
        
        return sum
    }
}
