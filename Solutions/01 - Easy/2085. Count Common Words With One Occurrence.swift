// Problem: https://leetcode.com/problems/count-common-words-with-one-occurrence/

class Solution {
    func exactlyOnce(_ words: [String]) -> Set<String> {
        var map = [String: Int]()
        words.forEach({ map[$0, default: 0] += 1 })
        return Set(map.filter({ $0.value == 1 }).keys)
    }
    func countWords(_ words1: [String], _ words2: [String]) -> Int {
        return exactlyOnce(words1).intersection(exactlyOnce(words2)).count
    }
}
