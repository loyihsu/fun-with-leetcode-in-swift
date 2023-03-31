// Problem: https://leetcode.com/problems/maximum-number-of-words-you-can-type/

class Solution {
    func canBeTypedWords(_ text: String, _ brokenLetters: String) -> Int {
        let broken = Set(brokenLetters)
        return text
            .components(separatedBy: " ")
            .map { Set($0).intersection(broken) }
            .filter(\.isEmpty)
            .count
    }
}
