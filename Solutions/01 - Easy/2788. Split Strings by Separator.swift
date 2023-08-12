// Problem: https://leetcode.com/problems/split-strings-by-separator/

class Solution {
    func splitWordsBySeparator(_ words: [String], _ separator: Character) -> [String] {
        words.flatMap { $0.split(separator: separator) }.map(String.init)
    }
}
