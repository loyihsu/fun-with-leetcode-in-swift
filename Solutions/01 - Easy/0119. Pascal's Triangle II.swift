// Problem: https://leetcode.com/problems/pascals-triangle-ii/

class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        guard rowIndex > 0 else { return [1] }
        guard rowIndex > 1 else { return [1, 1] }
        let prev = getRow(rowIndex - 1)
        var temp = [Int](repeating: 1, count: rowIndex + 1)
        for idx in 0 ..< prev.count - 1 {
            temp[idx + 1] = prev[idx] + prev[idx + 1]
        }
        return temp
    }
}
