// Problem: https://leetcode.com/problems/minimum-number-of-operations-to-move-all-balls-to-each-box/

class Solution {
    func minOperations(_ boxes: String) -> [Int] {
        let boxes = Array(boxes)
        var ones = [Int](), output = [Int](repeating: 0, count: boxes.count)
        for (idx, val) in boxes.enumerated() where val == "1" {
            ones.append(idx)
        }
        for idx in boxes.indices {
            var temp = 0
            for one in ones where one != idx {
                temp += one - idx > 0 ? one - idx : idx - one
            }
            output[idx] = temp
        }
        return output
    }
}
