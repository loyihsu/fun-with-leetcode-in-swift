// Problem: https://leetcode.com/problems/running-sum-of-1d-array/

class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var output = [Int](repeating: 0, count: nums.count)
        for (index, num) in nums.enumerated() {
            output[index] = index - 1 < 0 ? 0 + num : output[index - 1] + num
        }
        return output
    }
}
