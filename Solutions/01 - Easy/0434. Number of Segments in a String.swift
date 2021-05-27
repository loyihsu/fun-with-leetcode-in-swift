// Problem: https://leetcode.com/problems/number-of-segments-in-a-string/

class Solution {
    func countSegments(_ s: String) -> Int {
        var temp = false, count = 0
        for char in s {
            if char == " " {
                if temp {
                    temp = false
                    count += 1
                }
            } else {
                temp = true
            }
        }
        if temp {
            count += 1
        }
        return count
    }
}
