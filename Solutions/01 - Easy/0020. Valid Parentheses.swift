// Problem: https://leetcode.com/problems/valid-parentheses/

class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = ""
        let pairs: [Character: Character] = ["(": ")", "[": "]", "{": "}"]
        let opens = pairs.map { $0.key }, closes = pairs.map { $0.value }
        for char in s {
            if opens.contains(char) {
                stack.append(char)
            } else {
                if let last = stack.popLast() {
                    if pairs[last]! != char {
                        return false
                    }
                } else {
                    return false
                }
            }
        }
        return stack.isEmpty
    }
}
