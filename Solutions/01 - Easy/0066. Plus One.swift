// Problem: https://leetcode.com/problems/plus-one/

class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var output = digits, index = digits.count - 1, carry = false
        
        output[index] += 1
        
        while index >= 0 {
            if carry {
                output[index] += 1
                carry = false
            }
            if output[index] >= 10 {
                output[index] %= 10
                carry = true
            }
            index -= 1
        }
        
        if carry {
            output.insert(1, at: 0)
        }
        
        return output
    }
