// Problem: https://leetcode.com/problems/check-if-array-is-sorted-and-rotated/

class Solution {
    func check(_ nums: [Int]) -> Bool {
        var sorted: [Int] = nums.sorted()
        for num in nums {
            if nums == sorted {
                return true
            }
            sorted.append(sorted.removeFirst())
        }
        return false
    }
}
