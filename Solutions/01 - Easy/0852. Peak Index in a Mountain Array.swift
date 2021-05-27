// Problem: https://leetcode.com/problems/peak-index-in-a-mountain-array/

class Solution {
    func peakIndexInMountainArray(_ A: [Int]) -> Int {
        var maxIndex = -1, max = -1

        for (pos, val) in A.enumerated() {
            if val > max {
                maxIndex = pos
                max = val
            } else if val < max {
                break
            }
        }

        return maxIndex
    }
}
