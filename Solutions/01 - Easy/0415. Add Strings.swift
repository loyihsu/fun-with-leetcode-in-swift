// Problem: https://leetcode.com/problems/add-strings/

class Solution {
    func addStrings(_ num1: String, _ num2: String) -> String {
        var small = Array(num1.count < num2.count ? num1.reversed() : num2.reversed())
        var big = Array(num1.count < num2.count ? num2.reversed() : num1.reversed())
        var temp = 0, carry = false, output = String()
        let converter: [Character: Int] = ["0": 0, "1": 1, "2": 2, "3": 3,
                                           "4": 4, "5": 5, "6": 6, "7": 7,
                                           "8": 8, "9": 9]

        for i in 0 ..< big.count {
            temp = (i < small.count ? converter[small[i]]! : 0) + converter[big[i]]! + (carry ? 1 : 0)
            output.append("\(temp < 10 ? temp : temp % 10)")
            carry = temp >= 10 ? true : false
        }

        if carry {
            output.append("1")
        }

        return String(output.reversed())
    }
}
