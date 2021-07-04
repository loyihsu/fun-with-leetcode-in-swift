// Problem: https://leetcode.com/problems/build-array-from-permutation/

class Solution {
    func buildArray(_ nums: [Int]) -> [Int] {
        var output = nums
        for idx in output.indices where nums[idx] >= 0 && nums[idx] < nums.count {
            output[idx] = nums[nums[idx]]
        }
        return output
    }
}
