// Problem: https://leetcode.com/problems/contains-duplicate/

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var map = [Int: Bool]()
        for num in nums {
            if map[num] == true {
                return true
            } else {
                map[num] = true
            }
        }
        return false
    }
}
