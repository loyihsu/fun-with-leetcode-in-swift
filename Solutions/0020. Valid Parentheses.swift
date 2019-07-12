//Problem: https://leetcode.com/problems/valid-parentheses/

class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [String]()
        let open  = ["(","[","{"]
        let close = [")","]","}"]
        for k in s {
            if (open.firstIndex(of: "\(k)") != nil) {
                stack.insert("\(k)", at: 0)
            } else if (close.firstIndex(of: "\(k)") != nil) {
                if stack.isEmpty {
                    return false
                } else if open.firstIndex(of: stack.first!) != close.firstIndex(of: "\(k)") {
                    return false
                } else {
                    stack.remove(at: 0)
                }
            }
        }
        return stack.isEmpty
    }
}