// Problem: https://leetcode.com/problems/word-pattern/

class Solution {
    func wordPattern(_ pattern: String, _ s: String) -> Bool {
        var match = [Character: String](), chunks = s.components(separatedBy: .whitespaces)
        guard pattern.count == chunks.count else { return false }
        for (index, char) in pattern.enumerated() {
            if let mat = match[char] {
                if mat != chunks[index] {
                    return false
                }
            } else {
                if Array(match.values).contains(chunks[index]) {
                    return false
                }
                match[char] = chunks[index]
            }
        }
        return true
    }
}
