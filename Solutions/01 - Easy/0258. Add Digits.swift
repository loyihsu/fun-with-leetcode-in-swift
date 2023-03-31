// Problem: https://leetcode.com/problems/add-digits/

class Solution {
    func addDigits(_ num: Int) -> Int {
        num < 10 ? num : num % 9 == 0 ? 9 : num % 9
    }
}
