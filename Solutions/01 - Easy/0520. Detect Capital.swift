// Problem: https://leetcode.com/problems/detect-capital/

class Solution {
    func detectCapitalUse(_ word: String) -> Bool {
        let exceptFirst = word[word.index(after: word.startIndex) ..< word.endIndex]
        let uppercased = word == word.uppercased()
        let lowercased = word == word.lowercased()
        let first = "\(word.first!)" == "\(word.first!)".uppercased()
        let others = exceptFirst == exceptFirst.lowercased()
        return uppercased || lowercased || first && others
    }
}
