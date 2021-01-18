// Problem: https://leetcode.com/problems/maximum-nesting-depth-of-the-parentheses/

class Solution {
    func maxDepth(_ s: String) -> Int {
        var depth = 0, global = 0
        for char in s {
            if char == "(" {
                depth += 1
            } else if char == ")" {
                depth -= 1
            }
            if depth > global {
                global = depth
            }
        }
        return global
    }
}
