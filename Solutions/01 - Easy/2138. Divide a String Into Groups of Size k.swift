// Problem: https://leetcode.com/problems/divide-a-string-into-groups-of-size-k/

class Solution {
    func divideString(_ s: String, _ k: Int, _ fill: Character) -> [String] {
        let remain = s.count % k
        var output = [String](repeating: "", count: s.count / k + (remain != 0 ? 1 : 0))
        var idx = s.startIndex, count = 0
        while idx < s.endIndex {
            let notEnding = k <= s.count && idx < s.index(s.endIndex, offsetBy: -k + 1)
            let last = notEnding ? s.index(idx, offsetBy: k) : s.endIndex
            output[count] = String(s[idx ..< last]) + (notEnding ? "" : String(repeating: fill, count: k - remain))
            idx = last
            count += 1
        }
        return output
    }
}
