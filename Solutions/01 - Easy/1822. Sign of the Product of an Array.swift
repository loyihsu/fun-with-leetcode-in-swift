// Problem: https://leetcode.com/problems/sign-of-the-product-of-an-array/

class Solution {
    func arraySign(_ nums: [Int]) -> Int {
        var negCount = 0       
        for num in nums {
            if num == 0 {
                return 0
            } else if num < 0 {
                negCount += 1
            }
        }
        return negCount % 2 == 0 ? 1 : -1
    }
}
