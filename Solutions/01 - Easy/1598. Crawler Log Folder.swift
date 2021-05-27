// Problem: https://leetcode.com/problems/crawler-log-folder/

class Solution {
    func minOperations(_ logs: [String]) -> Int {
        var level = 0
        for log in logs {
            if log == "../" {
                level -= level - 1 >= 0 ? 1 : 0
            } else if log != "./" {
                level += 1
            }
        }
        return level
    }
}
