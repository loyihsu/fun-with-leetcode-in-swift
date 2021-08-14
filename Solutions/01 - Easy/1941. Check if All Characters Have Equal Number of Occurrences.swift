// Problem: https://leetcode.com/problems/check-if-all-characters-have-equal-number-of-occurrences/

class Solution {
    func areOccurrencesEqual(_ s: String) -> Bool {
        var map = [Character: Int]()
        for char in s {
            map[char] = (map[char] ?? 0) + 1
        }
        return Set(map.values).count == 1
    }
}
