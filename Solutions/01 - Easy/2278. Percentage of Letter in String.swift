// Problem: https://leetcode.com/problems/percentage-of-letter-in-string/

class Solution {
    func percentageLetter(_ s: String, _ letter: Character) -> Int {
        let letterCount = Double(s.filter { $0 == letter }.count)
        return Int((letterCount / Double(s.count)) * 100)
    }
}
