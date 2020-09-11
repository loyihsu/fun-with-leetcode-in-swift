// Problem: https://leetcode.com/problems/matrix-diagonal-sum/

class Solution {
    func diagonalSum(_ mat: [[Int]]) -> Int {
        var output = 0
        let count = mat.count
        for index in 0..<count {
            output += mat[index][index] + (count-1-index != index ? mat[index][count-1-index] : 0)
        }
        return output
    }
}
