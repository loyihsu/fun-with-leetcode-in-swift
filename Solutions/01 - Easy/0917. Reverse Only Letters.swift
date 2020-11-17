// Problem: https://leetcode.com/problems/reverse-only-letters/

class Solution {
    func reverseOnlyLetters(_ S: String) -> String {
        var stack = [Character](repeating: " ", count: S.count), pos = 0, output = Array(S)
        let letters = "abcdefghijklmnopqrstuvwxyz"
        for (index, value) in S.lowercased().enumerated() where letters.contains(value) {
            stack[pos] = output[index]
            pos += 1
        }
        pos -= 1
        for (index, char) in S.lowercased().enumerated() where letters.contains(char) {
            output[index] = stack[pos]
            pos -= 1
        }
        return String(output)
    }
}
