// Problem: https://leetcode.com/problems/missing-number/

class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        guard nums.count > 1 else {
            return nums.first! == 0 ? 1 : 0
        }
        var sum = 0, max = -1
        nums.forEach {
            max = $0 > max ? $0 : max
            sum += $0
        }
        var diff = -sum
        for num in 0...max {
            diff += num
        }
        return diff == 0 && nums.contains(0) ? max+1 : diff
    }
}
