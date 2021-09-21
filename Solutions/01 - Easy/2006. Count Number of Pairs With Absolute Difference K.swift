// Problem: https://leetcode.com/problems/count-number-of-pairs-with-absolute-difference-k/

class Solution {
    func countKDifference(_ nums: [Int], _ k: Int) -> Int {
        var count = 0
        for idx in nums.indices {
            for jdx in nums.indices where idx < jdx {
                if nums[idx] - nums[jdx] == k || nums[idx] - nums[jdx] == -k {
                    count += 1
                }
            }
        }
        return count
    }
}
