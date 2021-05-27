// Problem: https://leetcode.com/problems/remove-outermost-parentheses/

class Solution {
    func chunk(_ S: String) -> [String] {
        var stack = "", temp = "", subs = [String]()
        for char in S {
            if char == "(" {
                stack.append(char)
                temp.append(char)
            } else if char == ")" {
                stack.removeLast()
                temp.append(char)
                if stack.isEmpty {
                    subs.append(temp)
                    temp = ""
                }
            }
        }
        return subs
    }
    func outerRemover(_ s: String) -> String {
        var output = s
        output.removeFirst()
        output.removeLast()
        return output
    }
    func validate(_ str: String) -> Bool {
        var stack = ""
        for char in str {
            if char == "(" {
                stack.append(char)
            } else if char == ")" {
                if stack.isEmpty { return false } else { stack.removeLast() }
            }
        }
        return stack.isEmpty
    }
    func removeOuterParentheses(_ S: String) -> String {
        var subs = chunk(S), temp = ""
        for (index, sub) in subs.enumerated() {
            let newSub = outerRemover(sub)
            if validate(newSub) {
                subs[index] = newSub
            }
        }
        return subs.joined()
    }
}
