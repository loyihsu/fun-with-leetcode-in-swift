// Problem: https://leetcode.com/problems/pascals-triangle/

class Solution {
    var map = [Int: [Int]]()
    func generateRow(_ row: Int) -> [Int] {
        guard row > 1 else { return [1] }
        guard row > 2 else { return [1, 1] }
        if let solved = map[row] {
            return solved
        } else {
            let last = generateRow(row-1)
            var output = [Int](repeating: 1, count: row)
            for idx in 0..<last.count - 1 {
                output[idx + 1] = last[idx] + last[idx + 1]
            }
            map[row] = output
            return output
        }
    }
    func generate(_ numRows: Int) -> [[Int]] {
        return (1...numRows).map({ generateRow($0) })
    }
}
