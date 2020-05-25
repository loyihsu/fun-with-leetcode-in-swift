// Problem: https://leetcode.com/problems/remove-outermost-parentheses/

class Solution {
    func chunk(_ S: String) -> [String] {
        var stack = ""
        var temp = ""
        var subs = [String]()
        
        for s in S {
            if s == "(" {
                stack.append(s)
                temp.append(s)
            } else if s == ")" {
                stack.removeLast()
                temp.append(s)
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
        
        for s in str {
            if s == "(" {
                stack.append(s)
            } else if s == ")" {
                if stack.isEmpty { return false }
                else { stack.removeLast() }
            }
        }
        
        return stack.isEmpty
    }
    
    func removeOuterParentheses(_ S: String) -> String {
        var subs = chunk(S)
        var temp = ""
        
        for (id, sub) in subs.enumerated() {
            let newSub = outerRemover(sub)
            
            if validate(newSub) {
                subs[id] = newSub
            }
        }
        
        return subs.joined()
    }
}
