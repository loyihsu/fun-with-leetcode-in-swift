// Problem: https://leetcode.com/problems/partition-labels/

class Solution {
    func partitionLabels(_ S: String) -> [Int] {
        var map = [Character: Int](), output = [Int]()
        var start = 0, end = 0
        S.enumerated().forEach({map[$1, default: 0] = $0})
        for (idx, char) in S.enumerated() {
            end = max(end, map[char, default: 0])
            if idx != end { continue }
            output.append(idx - start + 1)
            start = idx + 1
        }
        return output
    }
}
