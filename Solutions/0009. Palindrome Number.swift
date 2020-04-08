//Problem: https://leetcode.com/problems/palindrome-number/

// Solution with conversion to String
class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        let str = "\(x)"
        return str == String(str.reversed())
    }
}

// Solution without conversion to String

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 { return false }
        else if x == 0 { return true }
        else {
            var arr = [Int]()
            var num = x

            while num != 0 {
                arr.append(num % 10)
                num /= 10
            }

            var start = 0
            var end = arr.count - 1

            while start < end {
                if arr[start] != arr[end] { return false }
                start += 1
                end -= 1
            }

            return true
        }
    }
}
