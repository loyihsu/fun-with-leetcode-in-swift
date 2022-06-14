// Problem: https://leetcode.com/problems/finding-the-users-active-minutes/

class Solution {
    func findingUsersActiveMinutes(_ logs: [[Int]], _ k: Int) -> [Int] {
        var userLogs = [Int: Set<Int>](), output = [Int](repeating: 0, count: k)
        for log in logs {
            userLogs[log[0], default: []].insert(log[1])
        }
        for value in userLogs.values {
            output[value.count - 1] += 1
        }
        return output
    }
}
