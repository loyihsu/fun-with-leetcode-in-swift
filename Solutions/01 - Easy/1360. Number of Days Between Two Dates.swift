// Problem: https://leetcode.com/problems/number-of-days-between-two-dates/

class Solution {
    let formatter = DateFormatter()
    func dateConverter(_ date: String) -> Date {
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter.date(from: date)!
    }

    func convertToDays(value: Double) -> Int {
        Int(value) > 0 ? Int(value) / 86400 : -Int(value) / 86400
    }

    func days(_ date1: String, _ date2: String) -> Int {
        convertToDays(value: dateConverter(date1).timeIntervalSince(dateConverter(date2)))
    }

    func daysBetweenDates(_ date1: String, _ date2: String) -> Int {
        days(date1, date2)
    }
}
