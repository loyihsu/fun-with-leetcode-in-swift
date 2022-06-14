// Problem: https://leetcode.com/problems/check-if-all-the-integers-in-a-range-are-covered/

class Solution {
    func isCovered(_ ranges: [[Int]], _ left: Int, _ right: Int) -> Bool {
        let set: Set<Int> = Set(ranges.flatMap { Array($0[0] ... $0[1]) })
        for num in left ... right {
            if !set.contains(num) {
                return false
            }
        }
        return true
    }
}
