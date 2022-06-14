// Problem: https://leetcode.com/problems/maximum-population-year/

class Solution {
    func maximumPopulation(_ logs: [[Int]]) -> Int {
        var years = [Int](repeating: 0, count: 101)
        var max: (idx: Int, count: Int) = (-1, -1)
        for log in logs {
            for idx in (log[0] - 1949) ..< (log[1] - 1949) {
                years[idx] += 1
            }
        }
        for (idx, count) in years.enumerated() where count > max.count {
            max = (idx, count)
        }
        return max.idx + 1949
    }
}
