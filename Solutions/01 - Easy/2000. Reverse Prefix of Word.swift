// Problem: https://leetcode.com/problems/reverse-prefix-of-word/

class Solution {
    func reversePrefix(_ word: String, _ ch: Character) -> String {
        var word = Array(word)
        guard let idx = word.firstIndex(of: ch) else {
            return String(word)
        }
        let reversed = Array(word[word.startIndex...idx].reversed())
        for pos in word.startIndex...idx {
            word[pos] = reversed[pos]
        }
        return String(word)
    }
}
