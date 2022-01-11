// Problem: https://leetcode.com/problems/check-if-all-as-appears-before-all-bs/

class Solution {
    func checkString(_ s: String) -> Bool {
        var firstB = false
        for char in s {
            if firstB && char == "a" {
                return false
            } else if !firstB && char == "b" {
                firstB = true
            }
        }
        return true
    }
}