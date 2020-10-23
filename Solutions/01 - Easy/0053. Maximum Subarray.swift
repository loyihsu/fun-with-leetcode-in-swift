// Problem: https://leetcode.com/problems/maximum-subarray/

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var max = nums[0], sofar = nums[0]
        for index in 1..<nums.count {
            sofar = nums[index] > sofar+nums[index] ? nums[index] : sofar+nums[index]
            max = max > sofar ? max : sofar
        }
        return max
    }
}
