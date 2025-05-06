// Problem: https://leetcode.com/problems/most-common-word/

class Solution {
    func mostCommonWord(_ paragraph: String, _ banned: [String]) -> String {
        var testcase = paragraph.lowercased().components(separatedBy: .whitespaces), map = [String: Int]()
        for word in testcase {
            var word = word
            word = word.components(separatedBy: .punctuationCharacters).first!
            map[word, default: 0] += 1
        }

        for (key, value) in map.sorted {
            $0.value > $1.value
        } where !banned.contains(key) {
            key
        }
        return ""
    }
}
