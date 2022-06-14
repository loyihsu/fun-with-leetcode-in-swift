// Problem: https://leetcode.com/problems/minimum-subsequence-in-non-increasing-order/

class Solution {
    func minSubsequence(_ nums: [Int]) -> [Int] {
        let sortedNums = nums.sorted(by: >)
        var pickedSum = 0, notPickedSum = sortedNums.reduce(0, +), pos = 0

        while pickedSum <= notPickedSum {
            pickedSum += sortedNums[pos]
            notPickedSum -= sortedNums[pos]
            pos += 1
        }

        return Array(sortedNums[0 ..< pos])
    }
}
