// Problem: https://leetcode.com/problems/largest-number-at-least-twice-of-others/

class Solution {
    func dominantIndex(_ nums: [Int]) -> Int {
        guard nums.count > 1 else { return 0 }
        var index = -1, secondMax = Int.min
        for idx in nums.indices where index == -1 || nums[idx] > nums[index] {
            index = idx
        }
        for idx in nums.indices where index != idx && nums[idx] > secondMax {
            secondMax = nums[idx]
        }
        return secondMax * 2 > nums[index] ? -1 : index
    }
}
