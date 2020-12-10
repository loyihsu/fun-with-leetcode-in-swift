// Problem: https://leetcode.com/problems/goal-parser-interpretation/

class Solution {
    func interpret(_ command: String) -> String {
        var idx = command.startIndex, output = ""
        while idx < command.endIndex {
            if command[idx] == "(" {
                if command[command.index(after: idx)] == "a" {
                    output.append(contentsOf: "al")
                    idx = command.index(idx, offsetBy: 4)
                } else {
                    output.append("o")
                    idx = command.index(idx, offsetBy: 2)
                }
            } else {
                output.append("G")
                idx = command.index(after: idx)
            }
        }
        return output
    }
}
