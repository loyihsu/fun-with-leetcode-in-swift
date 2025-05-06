// Problem: https://leetcode.com/problems/average-salary-excluding-the-minimum-and-maximum-salary/

class Solution {
    func average(_ salary: [Int]) -> Double {
        var max = Int.min, min = Int.max, sum = 0, count = 0
        for item in salary {
            sum += item
            if item > max {
                max = item
            }
            if item < min {
                min = item
            }
            count += 1
        }
        sum -= (max + min)
        return Double(sum) / Double(count - 2)
    }
}
