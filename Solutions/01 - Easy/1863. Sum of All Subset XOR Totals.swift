// Problem: https://leetcode.com/problems/sum-of-all-subset-xor-totals/

class Solution {
    func subsetXORSum(_ nums: [Int]) -> Int {
        return allSubsets(nums, cur: 0, xor: 0)
    }

    func allSubsets(_ nums: [Int], cur: Int, xor: Int) -> Int {
        guard cur != nums.count else { return xor }
        let include = allSubsets(nums, cur: cur + 1, xor: nums[cur] ^ xor)
        let exclude = allSubsets(nums, cur: cur + 1, xor: xor)
        return include + exclude
    }
}
