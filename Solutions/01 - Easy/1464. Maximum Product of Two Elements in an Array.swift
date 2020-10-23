// Problem: https://leetcode.com/problems/maximum-product-of-two-elements-in-an-array/

class Solution {
    func findMax(_ nums: [Int]) -> [Int] {
        var maxPos = 0, max = nums[0]
        for (index, num) in nums.enumerated() where num > max {
            maxPos = index
            max = num
        }
        return [max, maxPos]
    }
    func maxProduct(_ nums: [Int]) -> Int {
        if nums.count == 2 {
            return (nums[0] - 1) * (nums[1] - 1)
        } else {
            let firstMax = findMax(nums)
            var subnums = nums
            subnums.remove(at: firstMax[1])
            let secondMax = findMax(subnums)
            return (firstMax[0] - 1) * (secondMax[0] - 1)
        }
    }
}
