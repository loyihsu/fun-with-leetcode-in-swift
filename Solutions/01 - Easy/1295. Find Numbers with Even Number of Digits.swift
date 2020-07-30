// Problem: https://leetcode.com/problems/find-numbers-with-even-number-of-digits/

class Solution {
    func findNumbers(_ nums: [Int]) -> Int {
        var count = 0
        var dig = 0
        
        for n in nums {
            dig = 0
            var t = n
            while t > 0 {
                t /= 10
                dig += 1
            }
            if dig % 2 == 0 {
                count += 1
            }
        }
        
        return count
    }
}
