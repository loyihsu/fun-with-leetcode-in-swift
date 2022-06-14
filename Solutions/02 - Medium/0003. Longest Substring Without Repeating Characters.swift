// Problem: https://leetcode.com/problems/longest-substring-without-repeating-characters/

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var cur = ""
        var curCount = 0
        var maxCount = 0

        for c in s {
            if cur.contains(c) == false {
                cur.append(c)
                curCount += 1
            } else {
                maxCount = curCount > maxCount ? curCount : maxCount

                if let pos = cur.firstIndex(of: c) {
                    cur = "\(cur[cur.index(after: pos) ..< cur.endIndex])\(c)"
                    curCount = cur.count
                } else {
                    cur = "\(c)"
                    curCount = 1
                }
            }
        }

        maxCount = curCount > maxCount ? curCount : maxCount

        return maxCount
    }
}
