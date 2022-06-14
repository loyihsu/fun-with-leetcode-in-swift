// Problem: https://leetcode.com/problems/minimize-maximum-pair-sum-in-array/

class Solution {
    func minPairSum(_ nums: [Int]) -> Int {
        let sorted = nums.sorted()
        var idx = 1, jdx = nums.count - 2, pairSum = sorted[0] + sorted[nums.count - 1]
        while idx < jdx {
            pairSum = sorted[idx] + sorted[jdx] > pairSum ? sorted[idx] + sorted[jdx] : pairSum
            (idx, jdx) = (idx + 1, jdx - 1)
        }
        return pairSum
    }
}
