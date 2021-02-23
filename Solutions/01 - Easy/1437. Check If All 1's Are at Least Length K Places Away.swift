// Problem: https://leetcode.com/problems/check-if-all-1s-are-at-least-length-k-places-away/

class Solution {
    func kLengthApart(_ nums: [Int], _ k: Int) -> Bool {
        var count = 0, flag = false
        for num in nums {
            if num == 1 {
                if count < k && flag {
                    return false
                }
                flag = true
                count = 0
            } else {
                count += 1
            }
        }
        return true
    }
}
