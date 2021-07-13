// Problem: https://leetcode.com/problems/maximum-ascending-subarray-sum/

class Solution {
    func maxAscendingSum(_ nums: [Int]) -> Int {
        guard nums.count != 1 else { return nums[0] }
        var subs = [ArraySlice<Int>](), start = 0, prev = 0
        for idx in 1..<nums.count where nums[idx] <= nums[idx-1] {
            subs.append(nums[prev..<idx])
            prev = idx
        }
        subs.append(nums[prev..<nums.count])
        return subs.flatMap({$0.reduce(0, +)}).max()!
    }
}
