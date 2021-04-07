// Problem: https://leetcode.com/problems/house-robber/

extension Array where Element == Int {
    subscript(safe idx: Int) -> Int {
        get {
            return (0..<self.count).contains(idx) ? self[idx] : 0
        }
        set (newValue) {
            if (0..<self.count).contains(idx) {
                self[idx] = newValue
            }
        }
    }
}
class Solution {
    func rob(_ nums: [Int]) -> Int {
        guard nums.count > 1 else { return nums.first ?? 0 }
        var map = nums
        for idx in 0..<nums.count {
            map[safe: nums.count-idx-1] += max(map[safe: nums.count-idx+2], map[safe: nums.count-idx+1])
        }
        return map[0..<2].max() ?? 0
    }
}
