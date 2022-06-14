// Problem: https://leetcode.com/problems/move-zeroes/

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var temp = 0
        for i in 0 ..< nums.count where nums[i] == 0 {
            for j in i ..< nums.count where nums[j] != 0 {
                temp = nums[i]
                nums[i] = nums[j]
                nums[j] = temp
                break
            }
        }
    }
}
