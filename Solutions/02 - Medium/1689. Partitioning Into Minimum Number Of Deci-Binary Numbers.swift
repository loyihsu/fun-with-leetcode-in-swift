// Problem: https://leetcode.com/problems/partitioning-into-minimum-number-of-deci-binary-numbers/

class Solution {
    func minPartitions(_ n: String) -> Int {
        var max = Int.min
        for item in n where Int(String(item))! > max {
            max = Int(String(item))!
        }
        return max
    }
}
