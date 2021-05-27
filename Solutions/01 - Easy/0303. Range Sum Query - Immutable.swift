// Problem: https://leetcode.com/problems/range-sum-query-immutable/

class NumArray {
    var sums: [Int]
    init(_ nums: [Int]) {
        var temp = 0
        sums = [Int](repeating: 0, count: nums.count)
        for idx in nums.indices {
            temp += nums[idx]
            sums[idx] = temp
        }
    }
    func sumRange(_ i: Int, _ j: Int) -> Int {
        sums[j] - (i != 0 ? sums[i-1] : 0)
    }
}
