// Problem: https://leetcode.com/problems/height-checker/

class Solution {
    func heightChecker(_ heights: [Int]) -> Int {
        let sortedHeights = heights.sorted()
        return heights.enumerated().filter { $1 != sortedHeights[$0] }.count
    }
}
