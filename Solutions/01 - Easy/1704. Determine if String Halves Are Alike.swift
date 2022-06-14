// Problem: https://leetcode.com/problems/determine-if-string-halves-are-alike/

class Solution {
    private func countVowels(in string: Substring) -> Int {
        return string.filter { "aeiou".contains($0) }.count
    }

    private func halves(of str: String) -> (Substring, Substring) {
        return (str[..<str.index(str.startIndex, offsetBy: str.count / 2)],
                str[str.index(str.startIndex, offsetBy: str.count / 2)...])
    }

    func halvesAreAlike(_ s: String) -> Bool {
        let splitted = halves(of: s.lowercased())
        return countVowels(in: splitted.0) == countVowels(in: splitted.1)
    }
}
