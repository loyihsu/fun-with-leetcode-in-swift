// Problem: https://leetcode.com/problems/minimum-add-to-make-parentheses-valid/

class Solution {
    func minAddToMakeValid(_ s: String) -> Int {
        var stack = 0, notFound = 0
        for char in s {
            if char == "(" {
                stack += 1
            } else {
                if stack == 0 {
                    notFound += 1
                } else {
                    stack -= 1
                }
            }
        }
        return notFound + stack
    }
}
