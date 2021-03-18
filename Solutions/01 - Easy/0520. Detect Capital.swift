// Problem: https://leetcode.com/problems/detect-capital/

class Solution {
    func detectCapitalUse(_ word: String) -> Bool {
        let exceptFirst = word[word.index(after: word.startIndex)..<word.endIndex]
        return word == word.uppercased() || word == word.lowercased() || "\(word.first!)" == "\(word.first!)".uppercased() && exceptFirst == exceptFirst.lowercased()
    }
}
