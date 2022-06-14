// Problem: https://leetcode.com/problems/maximum-number-of-words-found-in-sentences/

class Solution {
    func mostWordsFound(_ sentences: [String]) -> Int {
        var max = Int.min
        for sentence in sentences {
            let count = sentence.filter { $0 == " " }.count + 1
            max = max > count ? max : count
        }
        return max
    }
}
