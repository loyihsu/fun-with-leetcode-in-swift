// Problem: https://leetcode.com/problems/replace-all-digits-with-characters/

class Solution {
    private func shift(_ character: Character, by offset: Int) -> Character {
        let code = character.unicodeScalars.first!.value
        var value = Int(code) + offset
        if value > "z".unicodeScalars.first!.value {
            value -= 26
        }
        return Character(UnicodeScalar(value)!)
    }

    func replaceDigits(_ str: String) -> String {
        var output = ""
        for (idx, char) in str.enumerated() {
            if idx % 2 == 0 {
                output.append(char)
            } else {
                output.append(shift(output.last!, by: Int("\(char)")!))
            }
        }
        return output
    }
}
