// Problem: https://leetcode.com/problems/day-of-the-year/

class Solution {
    func dayOfYear(_ date: String) -> Int {
        let inputString = [date[date.startIndex..<date.index(date.startIndex, offsetBy: 4)],
                           date[date.index(date.startIndex, offsetBy: 5)..<date.index(date.startIndex, offsetBy: 7)],
                           date[date.index(date.startIndex, offsetBy: 8)..<date.endIndex]].map { Int($0)! }
        var acc = [0, 0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334]
        if (inputString[0] % 4 == 0 && inputString[0] % 100 != 0) || inputString[0] % 400 == 0 {
            acc = [0, 0, 31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335]
        }
        return acc[inputString[1]] + inputString[2]
    }
}
