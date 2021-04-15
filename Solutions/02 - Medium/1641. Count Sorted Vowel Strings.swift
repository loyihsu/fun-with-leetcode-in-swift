// Problem: https://leetcode.com/problems/count-sorted-vowel-strings/

class Solution {
    func countVowelStrings(_ n: Int) -> Int {
        var vowels = (1, 1, 1, 1, 1), sum = 0
        for _ in 0..<n {
            sum = vowels.0 + vowels.1 + vowels.2 + vowels.3 + vowels.4
            vowels = (sum, sum-vowels.0, sum-vowels.0-vowels.1, vowels.3+vowels.4, vowels.4)
        }
        return sum
    }
}
