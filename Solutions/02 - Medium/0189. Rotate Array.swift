//Problem: https://leetcode.com/problems/rotate-array/

class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        var i = k
        while i > 0 {
            let temp = nums.popLast()!
            nums.insert(temp, at: 0)
            i -= 1
        }
    }
}
