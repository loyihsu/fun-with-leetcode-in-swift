// Problem: https://leetcode.com/problems/delete-characters-to-make-fancy-string/

class Solution {
    func makeFancyString(_ s: String) -> String {
        guard s.count > 1 else { return s }
        var temp = (s[s.startIndex], 1), idx = s.index(after: s.startIndex)
        var res = "\(s[s.startIndex])"
        while idx < s.endIndex {
            if s[idx] == temp.0 {
                temp.1 += 1
                if temp.1 < 3 {
                    res.append(temp.0)
                }
            } else {
                temp = (s[idx], 1)
                res.append(s[idx])
            }
            idx = s.index(after: idx)
        }
        return res
    }
}
