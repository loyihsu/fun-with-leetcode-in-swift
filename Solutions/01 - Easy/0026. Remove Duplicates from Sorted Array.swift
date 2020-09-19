// Problem: https://leetcode.com/problems/remove-duplicates-from-sorted-array/

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count >= 2 else { return nums.count }
        var i = 1, length = nums.count
        while i < length {
            if nums[i] == nums[i-1] {
                nums.remove(at: i)
                length -= 1
            } else {
                i += 1
            }
        }
        return length
    }
}
