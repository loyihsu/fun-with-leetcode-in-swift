// Problem: https://leetcode.com/problems/remove-all-occurrences-of-a-substring/

class Solution {
    func removeOccurrences(_ s: String, _ part: String) -> String {
        var output = "", idx = s.startIndex
        while idx < s.endIndex {
            output.append(s[idx])
            if output.count >= part.count {
                let range = output.index(output.endIndex, offsetBy: -part.count)...
                if String(output[range]) == part {
                    output.removeSubrange(range)
                }
            }
            idx = s.index(after: idx)
        }
        return output
    }
}
