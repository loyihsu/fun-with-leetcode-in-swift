// Problem: https://leetcode.com/problems/zigzag-conversion/

class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        guard numRows > 1 else { return s }
        var temp = [[Character]](repeating: [], count: numRows)
        var idx = 0, flag = false
        for char in s {
            temp[idx].append(char)
            if flag == false {
                idx += 1
                if idx == numRows {
                    flag = true
                    idx -= 2
                }
            } else {
                idx -= 1
                if idx == -1 {
                    flag = false
                    idx += 2
                }
            }
        }
        return temp.map { String($0) }.joined()
    }
}
