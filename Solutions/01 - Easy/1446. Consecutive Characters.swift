// Problem: https://leetcode.com/problems/consecutive-characters/

class Solution {
    func maxPower(_ s: String) -> Int {
        var cur = Character("0"), count = 0, max = 0
        s.forEach {
            if cur == $0 {
                count += 1
            } else {
                if count > max {
                    max = count
                }
                cur = $0
                count = 1
            }
        }
        if count > max {
            max = count
        }
        return max
    }
}
