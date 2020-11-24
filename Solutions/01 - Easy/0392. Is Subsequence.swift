// Problem: https://leetcode.com/problems/is-subsequence/

class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        var stack = [Character](s.reversed())
        for char in t where stack.isEmpty == false && stack.last! == char {
            stack.popLast()
        }
        return stack.isEmpty
    }
}
