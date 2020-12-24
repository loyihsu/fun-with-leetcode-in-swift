// Problem: https://leetcode.com/problems/thousand-separator/

class Solution {
    func thousandSeparator(_ n: Int) -> String {
        var string = Array("\(n)"), index = string.count, count = -1
        while index >= 0 {
            if count == 2 && index != 0 {
                string.insert(".", at: index)
                count = 0
            } else {
                count += 1
            }
            index -= 1
        }
        return String(string)
    }
}
