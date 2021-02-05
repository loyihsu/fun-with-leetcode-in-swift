// Problem: https://leetcode.com/problems/element-appearing-more-than-25-in-sorted-array/

class Solution {
    func findSpecialInteger(_ arr: [Int]) -> Int {
        var book = [Int: Int]()
        arr.forEach { book[$0, default: 0] += 1 }
        var max = (0, 0)
        for (key, value) in book where value > max.1 {
            max = (key, value)
        }
        return max.0
    }
}
