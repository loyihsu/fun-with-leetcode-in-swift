// Problem: https://leetcode.com/problems/find-first-palindromic-string-in-the-array/

class Solution {
    func isPalindrome(_ word: String) -> Bool {
        var idx = word.startIndex, jdx = word.index(before: word.endIndex)
        while idx < jdx {
            if word[idx] != word[jdx] {
                return false
            }
            (idx, jdx) = (word.index(after: idx), word.index(before: jdx))
        }
        return true
    }
    func firstPalindrome(_ words: [String]) -> String {
        for word in words where isPalindrome(word) {
            return word
        }
        return ""
    }
}
