// Problem: https://leetcode.com/problems/largest-odd-number-in-string/

class Solution {
    func largestOddNumber(_ num: String) -> String {
        let integer = Int("\(num.last!)")!
        if integer % 2 == 1 {
            return num
        }
        for idx in num.indices.reversed() where Int("\(num[idx])")! % 2 != 0 {
            return String(num[num.startIndex...idx])
        }
        return ""
    }
}
