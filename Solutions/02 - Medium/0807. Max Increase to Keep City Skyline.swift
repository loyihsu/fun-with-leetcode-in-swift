// Problem: https://leetcode.com/problems/max-increase-to-keep-city-skyline/

class Solution {
    func maxIncreaseKeepingSkyline(_ grid: [[Int]]) -> Int {
        var searchTable = grid, max = 0, increase = 0
        
        for i in 0..<grid.count {
            max = 0
            for j in 0..<grid[i].count where grid[i][j] > max {
                max = grid[i][j]
            }
            
            for j in 0..<grid[i].count {
                searchTable[i][j] = max
            }
        }
        
        for i in 0..<grid.count {
            max = 0
            for j in 0..<grid[i].count where grid[j][i] > max {
                max = grid[j][i]
            }
            
            for j in 0..<grid[i].count {
                increase += max < searchTable[j][i] ? max - grid[i][j] : searchTable[j][i] - grid[i][j]
            }
        }
        
        return increase
    }
}
