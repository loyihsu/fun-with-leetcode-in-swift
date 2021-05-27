// Problem: https://leetcode.com/problems/check-if-it-is-a-straight-line/

class Solution {
    func checkStraightLine(_ coordinates: [[Int]]) -> Bool {
        guard coordinates.count > 2 else { return true }
        var previous = Double(coordinates[1][1] - coordinates[0][1])/Double(coordinates[1][0] - coordinates[0][0])
        for idx in 2..<coordinates.count {
            let one = Double(coordinates[idx][1] - coordinates[idx-1][1])
            let zero = Double(coordinates[idx][0] - coordinates[idx-1][0])
            let current = one / zero
            if abs(previous) == Double.infinity && abs(previous) == abs(current) {
                continue
            }
            if previous != current { return false }
        }
        return true
    }
}
