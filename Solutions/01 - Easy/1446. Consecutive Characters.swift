// Problem: https://leetcode.com/problems/consecutive-characters/

class Solution {
    func maxPower(_ s: String) -> Int {
        var cur = Character("0"), count = 0, max = 0
        for  in s {
            if cur ==  {
                count += 1
            } else {
                if count > max {
                    max = count
                }
                cur = 
                count = 1
            }
        }
        if count > max {
            max = count
        }
        return max
    }
}
