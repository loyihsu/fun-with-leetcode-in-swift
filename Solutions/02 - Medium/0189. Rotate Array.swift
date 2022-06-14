// Problem: https://leetcode.com/problems/rotate-array/

class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let splitter = nums.count - (k % nums.count)
        nums = Array(nums[splitter...] + nums[0 ..< splitter])
    }
}
