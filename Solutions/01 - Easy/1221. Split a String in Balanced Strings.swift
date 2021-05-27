// Problem: https://leetcode.com/problems/split-a-string-in-balanced-strings/

class Solution {
    func balancedStringSplit(_ s: String) -> Int {
        var lefts = 0, rights = 0, o = [String](), temp = ""
        for c in s {
            if c == "R" { rights += 1 } else if c == "L" { lefts += 1 }
            temp.append(c)
            if lefts == rights && temp.isEmpty == false {
                o.append(temp)
                temp = ""
            }
        }
        return o.count
    }
}
