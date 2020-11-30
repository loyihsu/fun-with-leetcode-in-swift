// Problem: https://leetcode.com/problems/richest-customer-wealth/

class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        var max = Int.min, temp = 0
        for account in accounts {
            temp = 0
            for money in account {
                temp += money
            }
            if temp > max {
                max = temp
            }
        }
        return max
    }
}
