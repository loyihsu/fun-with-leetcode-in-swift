// Problem: https://leetcode.com/problems/special-array-with-x-elements-greater-than-or-equal-x/

class Solution {
    func specialArray(_ nums: [Int]) -> Int {
        guard nums.max()! > 0 else { return -1 }
        var counter = 0
        for idx in 1...Int(nums.max()!) {
            var temp = 0, flag = false
            for num in nums where num >= idx {
                temp += 1
                if temp > idx {
                    flag = true
                    break
                }
            }
            if !flag && temp == idx {
                return idx
            }
        }
        return -1
    }
}
