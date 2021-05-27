// Problem: https://leetcode.com/problems/count-items-matching-a-rule/

class Solution {
    func countMatches(_ items: [[String]], _ ruleKey: String, _ ruleValue: String) -> Int {
        var checkField = ["type", "color", "name"].firstIndex(of: ruleKey)!, count = 0
        for item in items where item[checkField] == ruleValue {
            count += 1
        }
        return count
    }
}
