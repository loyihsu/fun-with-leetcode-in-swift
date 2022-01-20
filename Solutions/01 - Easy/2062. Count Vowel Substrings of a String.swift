// Problem: https://leetcode.com/problems/count-vowel-substrings-of-a-string/

class Solution {
    func countVowelSubstrings(_ word: String) -> Int {
        var count = 0
        let vowels = Set("aeiou")
        for idx in word.indices {
            for jdx in word.indices where idx < jdx && word.distance(from: idx, to: jdx) >= 4 {
                let string = String(word[idx...jdx])
                if string.filter({ !vowels.contains($0) }).count != 0 {
                    continue
                }
                count = vowels.intersection(string).count == 5 ? count + 1 : count
            }
        }
        return count
    }
}
