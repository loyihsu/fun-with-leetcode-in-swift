// Problem: https://leetcode.com/problems/isomorphic-strings/

class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        var table = [Character: String]()
        var nextChar = 1, processedStrings = ("", "")
        for char in s {
            if table[char] == nil {
                table[char] = String(nextChar)
                nextChar += 1
            }
            processedStrings.0 += table[char, default: " "]
        }
        nextChar = 1
        table = [Character: String]()
        for char in t {
            if table[char] == nil {
                table[char] = String(nextChar)
                nextChar += 1
            }
            processedStrings.1 += table[char, default: " "]
        }
        return processedStrings.0 == processedStrings.1
    }
}
