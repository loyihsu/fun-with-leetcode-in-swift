// Problem: https://leetcode.com/problems/binary-search/

class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var lower = 0, upper = nums.count, pos = -1
        while lower < upper {
            pos = (upper - lower) / 2 + lower
            if target == nums[pos] {
                return pos
            } else if target > nums[pos] {
                lower = pos + 1
            } else {
                upper = pos
            }
        }
        return -1
    }
}
