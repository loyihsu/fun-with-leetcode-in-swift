// Problem: https://leetcode.com/problems/minimum-operations-to-make-the-array-increasing/

class Solution {
    func minOperations(_ nums: [Int]) -> Int {
        guard nums.count > 1 else { return 0 }
        var idx = 1, count = 0, last = nums[0]
        while idx < nums.count {
            var temp = nums[idx]
            while temp <= last {
                temp += 1
                count += 1
            }
            last = temp
            idx += 1
        }
        return count
    }
}
