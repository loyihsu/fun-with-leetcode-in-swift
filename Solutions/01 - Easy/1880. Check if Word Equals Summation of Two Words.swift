// Problem: https://leetcode.com/problems/check-if-word-equals-summation-of-two-words/

class Solution {
    func code(for str: String) -> Int {
        var temp = str.unicodeScalars.reduce("", {
            $0 + "\($1.value - 97)"
        })
        return Int(temp)!
    }
    func isSumEqual(_ firstWord: String, _ secondWord: String, _ targetWord: String) -> Bool {
        return code(for: firstWord) + code(for: secondWord) == code(for: targetWord)
    }
}
