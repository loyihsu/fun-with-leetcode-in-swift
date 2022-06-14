// Problem: https://leetcode.com/problems/remove-duplicates-from-sorted-array/

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count >= 2 else { return nums.count }
        var index = 1, length = nums.count
        while index < length {
            if nums[index] == nums[index - 1] {
                nums.remove(at: index)
                length -= 1
            } else {
                index += 1
            }
        }
        return length
    }
}
