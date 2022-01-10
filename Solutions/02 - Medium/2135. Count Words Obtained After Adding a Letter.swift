// Problem: https://leetcode.com/problems/count-words-obtained-after-adding-a-letter/

class Solution {
    var converter = [Character: Int]()
    init() {
        // Create a binary hash of each character (a = 1, b = 10, c = 100)
        let characters = "abcdefghijklmnopqrstuvwxyz"
        var start = 1
        for character in characters {
            converter[character] = start
            start = start << 1
        }
    }
    func hash(_ word: String) -> Int {
        // Hash the word into binary: (e.g. "ay" == 01000000000000000000000001)
        return word.reduce(0, { $0 + converter[$1, default: 0] })
    }
    func wordCount(_ startWords: [String], _ targetWords: [String]) -> Int {
        let startInts = Set(startWords.map({ hash($0) }))   // Create a hashed set of all start words
        var count = 0
        for targetWord in targetWords {
            let targetHash = hash(targetWord)   // Make a hash of the original word
            // Take out one character each time, if it is present in the start words hashes, count it and continue
            for char in targetWord where startInts.contains(targetHash ^ converter[char]!) {
                count += 1
                break
            }
        }
        return count
    }
}
