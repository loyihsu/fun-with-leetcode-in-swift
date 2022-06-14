// Problem: https://leetcode.com/problems/rotate-image/

class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        var temp = 0, first = 0, second = 0
        for idx in 0 ..< matrix.count / 2 {
            for jdx in idx ..< matrix.count - idx - 1 {
                temp = matrix[idx][jdx]
                (first, second) = (jdx, matrix.count - idx - 1)
                (matrix[first][second], temp) = (temp, matrix[first][second])
                (first, second) = (second, matrix.count - first - 1)
                (matrix[first][second], temp) = (temp, matrix[first][second])
                (first, second) = (second, matrix.count - first - 1)
                (matrix[first][second], temp) = (temp, matrix[first][second])
                (first, second) = (second, matrix.count - first - 1)
                (matrix[first][second], temp) = (temp, matrix[first][second])
            }
        }
    }
}
