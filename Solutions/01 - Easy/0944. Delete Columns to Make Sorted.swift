// Problem: https://leetcode.com/problems/delete-columns-to-make-sorted/

class Solution {
    func sorted(_ str: String) -> Bool {
        var prev = str.first!, idx = str.index(after: str.startIndex)
        while idx < str.endIndex {
            if prev > str[idx] {
                return false
            }
            prev = str[idx]
            idx = str.index(after: idx)
        }
        return true
    }
    func minDeletionSize(_ strs: [String]) -> Int {
        var str = "", strs = strs, count = 0
        while strs.first?.isEmpty == false {
            str = ""
            for idx in strs.indices {
                str.append(strs[idx].removeFirst())
            }
            if !sorted(str) {
                count += 1
            }
        }
        return count
    }
}
