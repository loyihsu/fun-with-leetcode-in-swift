// Problem: https://leetcode.com/problems/check-if-every-row-and-column-contains-all-numbers/

class Solution {
    func checkValid(_ matrix: [[Int]]) -> Bool {
        let mapTemplate = [Bool](repeating: false, count: matrix.count)
        for idx in 0..<matrix.count {
            var horizontal = mapTemplate, vertical = mapTemplate
            for jdx in 0..<matrix.count {
                horizontal[matrix[idx][jdx]-1] = true
                vertical[matrix[jdx][idx]-1] = true
            }
            if vertical.contains(false) || horizontal.contains(false) {
                return false
            }
        }
        return true
    }
}
