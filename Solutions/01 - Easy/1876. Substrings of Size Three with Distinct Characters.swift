// Problem: https://leetcode.com/problems/substrings-of-size-three-with-distinct-characters/

class Solution {
    func countGoodSubstrings(_ s: String) -> Int {
        guard s.count >= 3 else { return 0 }
        var count = 0
        for i in 0..<s.count - 2 {
            let idx = s.index(s.startIndex, offsetBy: i)
            let end = s.index(idx, offsetBy: 3)
            let temp = s[idx..<end]
            if Set(temp).count == temp.count {
                count += 1
            }
        }
        return count
    }
}
