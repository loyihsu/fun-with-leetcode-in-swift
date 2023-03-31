// Problem: https://leetcode.com/problems/house-robber/

class Solution {
    func rob(_ nums: [Int]) -> Int {
        guard nums.count > 1 else {
            return nums.first ?? 0
        }
        var array = [Int](repeating: 0, count: nums.count)
        for idx in nums.indices {
            if idx - 2 >= 0, idx - 3 >= 0 {
                array[idx] = max(array[idx - 2], array[idx - 3]) + nums[idx]
            } else if idx - 2 >= 0 {
                array[idx] = array[idx - 2] + nums[idx]
            } else {
                array[idx] = nums[idx]
            }
        }
        return max(array[array.count - 1], array[array.count - 2])
    }
}
