// Problem: https://leetcode.com/problems/sort-vowels-in-a-string/description/

class Solution {
    func sortVowels(_ s: String) -> String {
        var vowels: [Character] = []
        var output = s
            .map { char -> Character? in
                if isVowel(char) {
                    vowels.append(char)
                    return nil
                } else {
                    return char
                }
            }

        vowels.sort()

        var jdx = 0

        for idx in output.indices where output[idx] == nil {
            output[idx] = vowels[jdx]
            jdx += 1
        }

        return String(output.compactMap { $0 })
    }

    func isVowel(_ character: Character) -> Bool {
        let character = character.lowercased()
        return character == "a" || character == "e" || character == "i" || character == "o" || character == "u"
    }
}
