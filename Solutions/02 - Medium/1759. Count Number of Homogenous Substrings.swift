// Problem: https://leetcode.com/problems/count-number-of-homogenous-substrings/

class Solution {
    func countHomogenous(_ s: String) -> Int {
        var temp = 0, tempChar: Character = "\n", count = 0
        for char in s {
            if char == tempChar {
                temp += 1
            } else {
                tempChar = char
                temp = 1
            }
            count += temp
        }
        return count % 1_0000_0000_7
    }
}
