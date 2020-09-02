// Problem: https://leetcode.com/problems/maximum-number-of-coins-you-can-get/

class Solution {
    func maxCoins(_ piles: [Int]) -> Int {
        var sortedPile = piles.sorted(), sum = 0, pos = 0
        
        while piles.count - pos * 2 - 2 > pos {
            sum += sortedPile[piles.count - pos * 2 - 2]           
            pos += 1
        }
        
        return sum
    }
}
