// Problem: https://leetcode.com/problems/count-the-number-of-vowel-strings-in-range/

class Solution {
    func vowelStrings(_ words: [String], _ left: Int, _ right: Int) -> Int {
        (left ... right)
            .reduce(0) {
                let valid = validate(string: words[$1])
                return valid ? $0 + 1 : $0
            }
    }

    private func validate(string: String) -> Bool {
        checkVowel(string.first!) && checkVowel(string.last!)
    }

    private func checkVowel(_ character: Character) -> Bool {
        character == "a" || character == "e" || character == "i" || character == "o" || character == "u"
    }
}
