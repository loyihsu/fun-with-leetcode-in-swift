// Problem: https://leetcode.com/problems/number-of-strings-that-appear-as-substrings-in-word/

class Solution {
    func numOfStrings(_ patterns: [String], _ word: String) -> Int {
        var count = 0
        for pattern in patterns {
            if pattern.count > word.count {
                continue
            }
            var idx = word.startIndex
            while idx < word.index(word.endIndex, offsetBy: -pattern.count+1) {
                if pattern == word[idx..<word.index(idx, offsetBy: pattern.count)] {
                    count += 1
                    break
                }
                idx = word.index(after: idx)
            }
        }
        return count
    }
}
