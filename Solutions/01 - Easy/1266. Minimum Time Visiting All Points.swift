// Problem: https://leetcode.com/problems/minimum-time-visiting-all-points/

class Solution {
    func minTimeToVisitAllPoints(_ points: [[Int]]) -> Int {
        var pos = (points[0][0], points[0][1]), res = 0
        for idx in 1 ..< points.count {
            while points[idx][0] != pos.0 || points[idx][1] != pos.1 {
                if pos.0 < points[idx][0] {
                    pos.0 += 1
                } else if pos.0 > points[idx][0] {
                    pos.0 -= 1
                }
                if pos.1 < points[idx][1] {
                    pos.1 += 1
                } else if pos.1 > points[idx][1] {
                    pos.1 -= 1
                }
                res += 1
            }
        }
        return res
    }
}
