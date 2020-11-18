// Problem: https://leetcode.com/problems/average-salary-excluding-the-minimum-and-maximum-salary/

class Solution {
    func average(_ salary: [Int]) -> Double {
        var max = Int.min, min = Int.max, sum = 0, count = 0
        salary.forEach {
            sum += $0
            if $0 > max {
                max = $0
            }
            if $0 < min {
                min = $0
            }
            count += 1
        }
        sum -= (max + min)
        return Double(sum) / Double(count - 2)
    }
}
