// Problem: https://leetcode.com/problems/count-negative-numbers-in-a-sorted-matrix/

class Solution {
    func countNegatives(_ grid: [[Int]]) -> Int {
        let lineLength = grid[0].count
        var count = 0
        
        for l in 0..<grid.count {
            for index in 0..<lineLength {
                if grid[l][index] < 0 {
                    count += lineLength - index
                    break
                }
            }
        }
        
        return count
    }
}
