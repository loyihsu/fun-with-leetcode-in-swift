// Problem: https://leetcode.com/problems/integer-to-roman/

class Solution {
    func intToRoman(_ num: Int) -> String {
        let numbers = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
        let romans = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
        var temp = num, output = "", index = 0
        
        while temp > 0 {
            if temp / numbers[index] > 0 {
                output += romans[index]
                temp -= numbers[index]
            } else {
                index += 1
            }
        }
        
        return output
    }
}
