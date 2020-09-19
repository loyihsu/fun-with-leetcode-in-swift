// Problem: https://leetcode.com/problems/maximum-subarray/

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var max = nums[0], sofar = nums[0]
        for i in 1..<nums.count {
            sofar = nums[i] > sofar+nums[i] ? nums[i] : sofar+nums[i]
            max = max > sofar ? max : sofar
        }
        return max
    }
}
