// Problem: https://leetcode.com/problems/search-insert-position/

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        for index in nums.indices where nums[index] >= target {
            return index
        }
        return nums.count
    }
}
