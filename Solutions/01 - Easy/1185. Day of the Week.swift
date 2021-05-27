// Problem: https://leetcode.com/problems/day-of-the-week/

class Solution {
    func leap(_ year: Int) -> Bool {
        return (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
    }
    func dayOfTheWeek(_ day: Int, _ month: Int, _ year: Int) -> String {
        var sumDays = 0
        let days =  ? [0, 31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335] : [0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334]
        let results = ["Friday", "Saturday", "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday"]
        for cur in 1971..<year {
            sumDays += leap(cur) ? 366 : 365
        }
        sumDays += days[month-1] + day - 1
        return results[(sumDays) % 7]
    }
}
