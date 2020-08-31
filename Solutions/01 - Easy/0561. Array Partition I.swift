// Problem: https://leetcode.com/problems/array-partition-i/

class Solution {
    func arrayPairSum(_ nums: [Int]) -> Int {
        var interval = false
        return nums.sorted().reduce(0, {
            interval = !interval
            return $0+(interval ? $1 : 0)
        })
    }
}
