// Problem: https://leetcode.com/problems/backspace-string-compare/

class Solution {
    func generateString(_ str: String) -> String {
        var output = ""
        for s in str {
            if s != "#" {
                output.append(s)
            } else if output.isEmpty == false {
                output.popLast()
            }
        }
        return output
    }

    func backspaceCompare(_ S: String, _ T: String) -> Bool {
        generateString(S) == generateString(T)
    }
}
