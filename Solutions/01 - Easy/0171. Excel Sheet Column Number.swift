// Problem: https://leetcode.com/problems/excel-sheet-column-number/

class Solution {
    func titleToNumber(_ columnTitle: String) -> Int {
        var map = [Character: Int](), output = 0
        for (idx, val) in Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ").enumerated() {
            map[val] = idx + 1
        }
        for char in columnTitle {
            output = output * 26 + map[char]!
        }
        return output
    }
}
