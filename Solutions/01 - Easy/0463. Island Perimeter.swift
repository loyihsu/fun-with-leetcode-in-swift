// Problem: https://leetcode.com/problems/island-perimeter/

class Solution {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        var output = 0
        let height = grid.count, width = grid[0].count
        for idx in grid.indices {
            for jdx in grid[idx].indices where grid[idx][jdx] == 1 {
                if jdx == 0 || grid[idx][jdx - 1] == 0 {
                    output += 1
                }
                if jdx == width - 1 || grid[idx][jdx + 1] == 0 {
                    output += 1
                }
                if idx == 0 || grid[idx - 1][jdx] == 0 {
                    output += 1
                }
                if idx == height - 1 || grid[idx + 1][jdx] == 0 {
                    output += 1
                }
            }
        }
        return output
    }
}
