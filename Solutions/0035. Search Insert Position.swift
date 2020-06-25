// Problem: https://leetcode.com/problems/search-insert-position/

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        for (index, value) in nums.enumerated() {
            if value >= target {
                return index
            }
        }
        return nums.count
    }
}
