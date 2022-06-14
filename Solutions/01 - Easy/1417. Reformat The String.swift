// Problem: https://leetcode.com/problems/reformat-the-string/

class Solution {
    func reformat(_ s: String) -> String {
        var digits = "", chars = ""
        for char in s {
            if "0123456789".contains(char) {
                digits.append(char)
            } else {
                chars.append(char)
            }
        }
        if digits.count == chars.count || digits.count == chars.count + 1 || digits.count == chars.count - 1 {
            var output = ""
            while !digits.isEmpty, !chars.isEmpty {
                if chars.count > digits.count {
                    output.append(chars.popLast()!)
                    output.append(digits.popLast()!)
                } else {
                    output.append(digits.popLast()!)
                    output.append(chars.popLast()!)
                }
            }
            if !digits.isEmpty {
                output.append(digits.popLast()!)
            }
            if !chars.isEmpty {
                output.append(chars.popLast()!)
            }
            return output
        }
        return ""
    }
}
