// Problem: https://leetcode.com/problems/widest-vertical-area-between-two-points-containing-no-points/

class Solution {
    func maxWidthOfVerticalArea(_ points: [[Int]]) -> Int {
        let sortedYs = Array(Set(points.map { $0[0] })).sorted()
        var max = Int.min
        guard sortedYs.count > 1 else { return 0 }
        for idx in 1 ..< sortedYs.count {
            let temp = sortedYs[idx] - sortedYs[idx - 1]
            if temp > max {
                max = temp
            }
        }
        return max
    }
}
