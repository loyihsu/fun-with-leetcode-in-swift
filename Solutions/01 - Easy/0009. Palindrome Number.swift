// Problem: https://leetcode.com/problems/palindrome-number/

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        guard x >= 0 else { return x == 0 }
        var arr = [Int](), num = x
        while num != 0 {
            arr.append(num % 10)
            num /= 10
        }
        for index in arr.indices where arr[index] != arr[arr.count-index-1] {
            return false
        }
        return true
    }
}
