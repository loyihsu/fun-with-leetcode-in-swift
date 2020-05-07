//Problem: https://leetcode.com/problems/valid-parentheses/

class Solution {
    func isValid(_ s: String) -> Bool {
        let matchedParentheses: [Character: Character] = ["(": ")", "{": "}", "[": "]"]
        let opens = ["(", "{", "["]
        let closes = [")", "}", "]"]
        var stack = ""
        
        for c in s {
            if opens.contains("\(c)") {
                stack.append(c)
            } else if closes.contains("\(c)") {
                if let last = stack.last, let p = matchedParentheses[last] {
                    if c == p {
                        stack.removeLast()
                    } else {
                        return false
                    }
                } else {
                    return false
                }
            } else {
                return false
            }
        }
        
        return stack.isEmpty
    }
}
