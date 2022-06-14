// Problem: https://leetcode.com/problems/find-subsequence-of-length-k-with-the-largest-sum/

class Solution {
    func maxSubsequence(_ nums: [Int], _ k: Int) -> [Int] {
        return nums.enumerated()
            .sorted(by: { $0.element > $1.element })[0 ..< k]
            .sorted(by: { $0.offset < $1.offset })
            .map { $0.element }
    }
}
