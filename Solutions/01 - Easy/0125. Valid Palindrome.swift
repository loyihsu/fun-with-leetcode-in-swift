// Problem: https://leetcode.com/problems/valid-palindrome/

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var temp = [Character]()
        let alphanumerics = "abcdefghijklmnopqrstuvwxyz0123456789"
        for char in s.lowercased() where alphanumerics.contains(char) {
            temp.append(char)
        }
        var idx = 0, jdx = temp.count - 1
        while idx < jdx {
            if temp[idx] != temp[jdx] {
                return false
            }
            (idx, jdx) = (idx + 1, jdx - 1)
        }
        return true
    }
}
