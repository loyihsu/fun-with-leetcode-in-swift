// Problem: https://leetcode.com/problems/length-of-last-word/

class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var count = 0, space = false
        for  in s {
            if  == " " {
                space = true
            } else if space == true {
                count = 1
                space = false
            } else {
                count += 1
            }
        }
        return count
    }
}
