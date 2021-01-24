// Problem: https://leetcode.com/problems/find-the-highest-altitude/

class Solution {
    func largestAltitude(_ gain: [Int]) -> Int {
        var max = 0, cur = 0
        for item in gain {
            cur += item
            max = cur > max ? cur : max
        }
        return max
    }
}
