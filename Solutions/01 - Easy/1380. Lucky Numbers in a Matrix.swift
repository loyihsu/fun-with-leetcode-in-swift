// Problem: https://leetcode.com/problems/lucky-numbers-in-a-matrix/

class Solution {
    func luckyNumbers (_ matrix: [[Int]]) -> [Int] {
        var rowMin = [Int](), columnMax = [Int]()

        for i in matrix.indices {
            var min = Int.max
            for j in matrix[i].indices where matrix[i][j] < min {
                min = matrix[i][j]
            }
            rowMin.append(min)
        }

        for j in matrix.first!.indices {
            var max = Int.min
            for i in matrix.indices where matrix[i][j] > max {
                max = matrix[i][j]
            }
            columnMax.append(max)
        }

        return rowMin.filter { columnMax.contains($0) }
    }
}
