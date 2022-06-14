// Problem: https://leetcode.com/problems/cells-with-odd-values-in-a-matrix/

class Solution {
    func oddCells(_ n: Int, _ m: Int, _ indices: [[Int]]) -> Int {
        var matrix = [[Bool]](repeating: [Bool](repeating: false, count: m), count: n), odd = 0
        for rc in indices {
            let r = rc[0], c = rc[1]
            for i in 0 ..< m {
                matrix[r][i] = !matrix[r][i]
            }
            for i in 0 ..< n {
                matrix[i][c] = !matrix[i][c]
            }
        }
        for arr in matrix {
            for a in arr where a {
                odd += 1
            }
        }
        return odd
    }
}
