// Problem: https://leetcode.com/problems/maximum-score-words-formed-by-letters/

class Solution {
    private func counterMapping(_ letters: [Character]) -> [Character: Int] {
        var output = [Character: Int]()
        for letter in letters {
            output[letter, default: 0] += 1
        }
        return output
    }

    private func canPickChecker(_ word: String, _ lettersMap: [Character: Int]) -> Bool {
        var counter = [Character: Int]()
        for letter in word {
            counter[letter, default: 0] += 1
        }
        for (key, value) in counter {
            if let available = lettersMap[key] {
                if value > available {
                    return false
                }
            } else {
                return false
            }
        }
        return true
    }

    private func scorer(_ word: String, _ score: [Int]) -> Int {
        word.reduce(0) { $0 + score[Int($1.asciiValue!) - 97] }
    }

    private func canPick(_ word: String, _ restingMap: [Character: Int]) -> [Character: Int]? {
        var restingMap = restingMap
        for letter in word {
            if let available = restingMap[letter], available > 0 {
                restingMap[letter] = available - 1
            } else {
                return nil
            }
        }
        return restingMap
    }

    func restChoice(_ words: [String], _ restingMap: [Character: Int], _ score: [Int], _ tempScore: Int) -> Int {
        guard words.count > 0 else { return tempScore }
        var values = [Int]()
        let newArray = Array(words[1...])
        if let pickedMap = canPick(words.first!, restingMap) {
            values.append(restChoice(newArray, pickedMap, score, tempScore + scorer(words.first!, score)))
        }
        values.append(restChoice(newArray, restingMap, score, tempScore))
        return values.max()!
    }

    func maxScoreWords(_ words: [String], _ letters: [Character], _ score: [Int]) -> Int {
        var allLetters = counterMapping(letters)
        let canPick = words.filter { canPickChecker($0, allLetters) }
        return restChoice(words, allLetters, score, 0)
    }
}
