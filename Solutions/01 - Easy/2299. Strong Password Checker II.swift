// Problem: https://leetcode.com/problems/strong-password-checker-ii/

class Solution {
    func strongPasswordCheckerII(_ password: String) -> Bool {
        guard password.count >= 8 else { return false }
        let specialLetters = CharacterSet(charactersIn: "!@#$%^&*()-+")
        let checkSets: [CharacterSet] = [.lowercaseLetters, .uppercaseLetters, .decimalDigits, specialLetters]
        for checkSet in checkSets {
            if !password.map({ (char: Character) -> Bool in
                checkSet.contains(char.unicodeScalars.first!)
            }).contains(true) {
                return false
            }
        }
        for idx in 0 ..< password.count - 1 {
            if let window = checkWindow(password, idx: idx) {
                if window.first == window.second {
                    return false
                }
            } else {
                return false
            }
        }
        return true
    }

    private func checkWindow(_ string: String, idx: Int) -> (first: Character, second: Character)? {
        guard idx < string.count - 1 else { return nil }
        let index = string.index(string.startIndex, offsetBy: idx)
        return (string[index], string[string.index(after: index)])
    }
}
