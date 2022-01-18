// Problem: https://leetcode.com/problems/check-whether-two-strings-are-almost-equivalent/

class Solution {
    func createMap(_ string: String) -> [Character: Int] {
        var map = [Character: Int]()
        for char in string {
            map[char, default: 0] += 1
        }
        return map
    }
    func checkAlmostEquivalent(_ word1: String, _ word2: String) -> Bool {
        let first = createMap(word1), second = createMap(word2)
        let keys = Set(first.keys).union(second.keys)
        var difference = -1
        for key in keys {
            difference = max(difference, abs(first[key, default: 0] - second[key, default: 0]))
        }
        return difference <= 3
    }
}
