// Problem: https://leetcode.com/problems/remove-element/

class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        guard nums.isEmpty == false else { return 0 }
        var count = nums.count, index = 0
        while index < count {
            if nums[index] == val {
                nums.remove(at: index)
                count -= 1
            } else {
                index += 1
            }
        }
        return count
    }
}
