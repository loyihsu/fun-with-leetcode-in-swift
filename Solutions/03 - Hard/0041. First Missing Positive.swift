// Problem: https://leetcode.com/problems/first-missing-positive/

class Solution {
    func firstMissingPositive(_ nums: [Int]) -> Int {
        var output = 1
        let nums = nums.sorted()
        for item in nums where item == output {
            output += 1
        }
        return output
    }
}
