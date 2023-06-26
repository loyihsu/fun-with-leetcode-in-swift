// Problem: https://leetcode.com/problems/string-compression/description/

class Solution {
    func compress(_ chars: inout [Character]) -> Int {
        var tracker: (character: Character, count: Int) = (chars[0], 1)

        var writeHead = 0
        var readHead = 1

        func performPrint() {
            var printer: [Character]
            if tracker.count == 1 {
                printer = [tracker.character]
            } else {
                printer = [tracker.character]
                printer.append(contentsOf: String(tracker.count))
            }

            for character in printer {
                chars[writeHead] = character
                writeHead += 1
            }
        }

        while readHead < chars.count {
            let readCharacter = chars[readHead]
            if tracker.character == readCharacter {
                tracker.count += 1
            } else {
                performPrint()
                tracker = (readCharacter, 1)
            }
            readHead += 1
        }

        performPrint()

        return writeHead
    }
}
