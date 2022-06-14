// Problem: https://leetcode.com/problems/find-valid-matrix-given-row-and-column-sums/

class Solution {
    func restoreMatrix(_ rowSum: [Int], _ colSum: [Int]) -> [[Int]] {
        var result = [[Int]](repeating: [Int](repeating: 0, count: colSum.count), count: rowSum.count)
        var idx = 0, jdx = 0
        var rowSum = rowSum, colSum = colSum
        while idx < result.count, jdx < result[idx].count {
            result[idx][jdx] = min(rowSum[idx], colSum[jdx])
            if rowSum[idx] == colSum[jdx] {
                (idx, jdx) = (idx + 1, jdx + 1)
            } else if rowSum[idx] > colSum[jdx] {
                rowSum[idx] -= colSum[jdx]
                jdx += 1
            } else {
                colSum[jdx] -= rowSum[idx]
                idx += 1
            }
        }
        return result
    }
}
