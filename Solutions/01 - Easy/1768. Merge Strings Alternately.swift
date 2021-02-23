// Problem: https://leetcode.com/problems/merge-strings-alternately/

class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        var output = "", word1 = Array(word1.reversed()), word2 = Array(word2.reversed())
        while word1.isEmpty == false || word2.isEmpty == false {
            if let next = word1.popLast() {
                output.append(next)
            }
            if let next = word2.popLast() {
                output.append(next)
            }
        }
        return output
    }
}
