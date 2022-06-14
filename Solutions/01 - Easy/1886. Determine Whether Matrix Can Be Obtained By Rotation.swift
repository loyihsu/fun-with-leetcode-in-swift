// Problem: https://leetcode.com/problems/determine-whether-matrix-can-be-obtained-by-rotation/

class Solution {
    private func rotate(_ mat: [[Int]]) -> [[Int]] {
        var mat = mat
        for idx in 0 ..< mat.count / 2 {
            for jdx in idx ..< mat.count - idx - 1 {
                let count = mat.count
                (mat[idx][jdx],
                 mat[count - idx - 1][mat.count - jdx - 1],
                 mat[jdx][count - idx - 1],
                 mat[count - jdx - 1][idx]) = (mat[count - jdx - 1][idx],
                                               mat[jdx][count - idx - 1],
                                               mat[idx][jdx],
                                               mat[count - idx - 1][count - jdx - 1])
            }
        }
        return mat
    }

    func findRotation(_ mat: [[Int]], _ target: [[Int]]) -> Bool {
        guard mat != target else { return true }
        var mat = mat
        for _ in 0 ..< 3 {
            mat = rotate(mat)
            if mat == target {
                return true
            }
        }
        return false
    }
}
