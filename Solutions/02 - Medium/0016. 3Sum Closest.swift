// Problem: https://leetcode.com/problems/3sum-closest/

class Solution {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        let nums = nums.sorted()
        var results = (value: Int.max, difference: Int.max)
        for idx in nums.indices {
            var left = idx + 1, right = nums.count - 1
            while left < right {
                let sum = nums[idx] + nums[left] + nums[right]
                if abs(sum - target) < results.difference {
                    results = (sum, abs(sum - target))
                }
                if sum == target {
                    return sum
                } else if sum < target {
                    left += 1
                } else {
                    right -= 1
                }
            }
        }
        return results.value
    }
}
