// Problem: https://leetcode.com/problems/check-if-one-string-swap-can-make-strings-equal/

class Solution {
    func areAlmostEqual(_ s1: String, _ s2: String) -> Bool {
        guard s1 != s2 else { return true }
        var odx = s1.startIndex, tdx = s2.startIndex, temp = ([Character](), [Character]())
        while odx < s1.endIndex && tdx < s2.endIndex {
            if s1[odx] != s2[tdx] {
                temp.0.append(s1[odx])
                temp.1.append(s2[tdx])
                if temp.0.count > 2 {
                    return false
                }
            }
            odx = s1.index(after: odx)
            tdx = s2.index(after: tdx)
        }
        return temp.0.count == 2 && temp.0 == temp.1.reversed()
    }
}
