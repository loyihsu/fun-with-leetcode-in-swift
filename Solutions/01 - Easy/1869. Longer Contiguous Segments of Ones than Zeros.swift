// Problem: https://leetcode.com/problems/longer-contiguous-segments-of-ones-than-zeros/

class Solution {
    func checkZeroOnes(_ s: String) -> Bool {
        guard s.count > 1 else { return s[s.startIndex] == "1" }
        var prev = s[s.startIndex] == "1", count = 1, global = (0, 0)
        var idx = s.index(after: s.startIndex)
        while idx < s.endIndex {
            if prev {
                if s[idx] == "1" {
                    count += 1
                } else {
                    global.1 = global.1 < count ? count : global.1
                    count = 1
                }
            } else {
                if s[idx] == "0" {
                    count += 1
                } else {
                    global.0 = global.0 < count ? count : global.0
                    count = 1
                }
            }
            prev = s[idx] == "1"
            idx = s.index(after: idx)
        }
        global.1 = prev && global.1 < count ? count : global.1
        global.0 = !prev && global.0 < count ? count : global.0
        return global.1 > global.0
    }
}
