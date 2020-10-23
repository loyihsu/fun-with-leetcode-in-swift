// Problem: https://leetcode.com/problems/count-negative-numbers-in-a-sorted-matrix/

class Solution {
    func countNegatives(_ grid: [[Int]]) -> Int {
        var count = 0
        for index in grid.indices {
            for jndex in grid[index].indices where grid[index][jndex] < 0 {
                count += grid[index].count - jndex
                break
            }
        }
        return count
    }
}
