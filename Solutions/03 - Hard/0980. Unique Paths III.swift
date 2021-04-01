// Problem: https://leetcode.com/problems/unique-paths-iii/

class Solution {
    private let validSet = Set([0,2])
    private var result = 0
    private func traverse(_ grid: [[Int]], _ pos: (x: Int, y: Int), _ sum: Int) {
        if grid[pos.x][pos.y] == 2 {
            result += (sum == 1) ? 1 : 0
            return
        }      
        var temp = grid
        temp[pos.x][pos.y] = -1
        let dir = [(1,0), (0,1), (-1,0), (0,-1)]
        for (dx, dy) in dir where pos.x+dx >= 0 && pos.x+dx < grid.count && pos.y+dy >= 0 && pos.y+dy < grid[0].count {
            if validSet.contains(grid[pos.x+dx][pos.y+dy]) {
                traverse(temp, (pos.x+dx,pos.y+dy), sum-1)
            }
        }
    }
    func uniquePathsIII(_ grid: [[Int]]) -> Int {
        var start = (-1, -1), walkable = 0
        for idx in grid.indices {
            for jdx in grid[idx].indices {
                if grid[idx][jdx] == 1 {
                    start = (idx, jdx)
                }
                if grid[idx][jdx] != -1 {
                    walkable += 1
                }
            }
        }
        traverse(grid, start, walkable)
        return result
    }
}
