//Problem: https://leetcode.com/problems/maximum-subarray/

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var max = nums[0]
        var sofar = nums[0]
        
        for i in 1..<nums.count {
            // If the new element alone is larger than what we've got so far, switch
            sofar = nums[i] > sofar + nums[i] ? nums[i] : sofar+nums[i]
            // If our result is larger than maximum, switch
            max = max > sofar ? max : sofar
        }
        
        return max
    }
}
