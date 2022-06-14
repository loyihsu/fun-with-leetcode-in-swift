// Problem: https://leetcode.com/problems/jump-game/

class Solution {
    func canJump(_ nums: [Int]) -> Bool {
        var table = [Bool](repeating: false, count: nums.count + 1)
        table[0] = true
        for idx in nums.indices where nums[idx] != 0 {
            for jdx in 1 ... nums[idx] where idx + jdx < table.count {
                table[idx + jdx] = table[idx]
            }
        }
        return table[nums.count - 1]
    }
}
