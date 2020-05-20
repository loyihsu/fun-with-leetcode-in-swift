// Problem: https://leetcode.com/problems/remove-duplicates-from-sorted-array/

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count < 2 { return nums.count }
        
        var i = 1
        var length = nums.count
        
        while i < length {
            if nums[i] == nums[i-1] {
                nums.remove(at: i)
                length -= 1
                continue
            }
            i += 1
        }
                
        return length
    }
}
