// Problem: https://leetcode.com/problems/longest-palindrome/

class Solution {
    func longestPalindrome(_ s: String) -> Int {
        var map = [Character: Int](), ones = false, output = 0
        s.forEach { map[$0, default: 0] += 1 }
        for (item, count) in map {
            if count == 1 {
                if ones == false {
                    output += 1
                    ones = true
                }
            } else if count % 2 == 1 {
                if ones == false {
                    output += 1
                    ones = true
                }
                output += count - 1
            } else {
                output += count
            }
        }
        return output
    }
}
