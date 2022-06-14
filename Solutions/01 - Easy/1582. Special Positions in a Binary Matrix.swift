// Problem: https://leetcode.com/problems/special-positions-in-a-binary-matrix/

class Solution {
    func numSpecial(_ mat: [[Int]]) -> Int {
        var ones = [(Int, Int)](), count = 0
        for idx in mat.indices {
            for jdx in mat[idx].indices where mat[idx][jdx] == 1 {
                ones.append((idx, jdx))
            }
        }
        for (idx_o, jdx_o) in ones {
            var flag = true
            for jdx in mat[idx_o].indices where jdx != jdx_o && mat[idx_o][jdx] == 1 {
                flag = false
                break
            }
            if flag == true {
                for idx in mat.indices where idx != idx_o && mat[idx][jdx_o] == 1 {
                    flag = false
                    break
                }
                if flag == true {
                    count += 1
                }
            }
        }
        return count
    }
}
