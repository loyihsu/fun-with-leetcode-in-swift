// Problem: https://leetcode.com/problems/remove-element/

class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        if nums.isEmpty { return 0 }
        
        var count = nums.count
        var i = 0
        
        while i < count {
            if nums[i] == val {
                nums.remove(at: i)
                count -= 1
                continue
            }
            i += 1
        }
        
        return count
    }
}
