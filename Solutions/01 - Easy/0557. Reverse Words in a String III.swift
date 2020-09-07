// Problem: https://leetcode.com/problems/reverse-words-in-a-string-iii/

class Solution {
    func reverseWords(_ s: String) -> String {
        return s.components(separatedBy: .whitespaces).map { String($0.reversed()) }.joined(separator: " ")
    }
}
