// Problem: https://leetcode.com/problems/maximum-gap/

class Solution {
    func maximumGap(_ nums: [Int]) -> Int {
        guard nums.count >= 2 else { return 0 }
        let nums = nums.sorted()
        var maxGap = 0
        for idx in 0 ..< nums.count - 1 {
            maxGap = max(nums[idx + 1] - nums[idx], maxGap)
        }
        return maxGap
    }
}
