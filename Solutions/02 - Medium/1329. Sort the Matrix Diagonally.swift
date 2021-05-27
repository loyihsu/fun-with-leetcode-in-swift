// Problem: https://leetcode.com/problems/sort-the-matrix-diagonally/

class Solution {
    func traverseAndSortReplaceDiagonal(_ mat: inout [[Int]], _ startX: Int, _ startY: Int) {
        var position = (startX, startY), output = [Int]()
        while position.0 < mat.count && position.1 < mat[0].count {
            output.append(mat[position.0][position.1])
            position = (position.0 + 1, position.1 + 1)
        }
        output.sort()
        position = (startX, startY)
        while position.0 < mat.count && position.1 < mat[0].count {
            mat[position.0][position.1] = output.removeFirst()
            position = (position.0 + 1, position.1 + 1)
        }
    }

    func diagonalSort(_ mat: [[Int]]) -> [[Int]] {
        var output = mat
        for idx in output[0].indices {
            traverseAndSortReplaceDiagonal(&output, 0, idx)
        }
        for idx in 1..<output.count {
            traverseAndSortReplaceDiagonal(&output, idx, 0)
        }
        return output
    }
}
