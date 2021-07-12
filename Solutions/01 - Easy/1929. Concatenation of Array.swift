// https://leetcode.com/problems/concatenation-of-array/

class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        [nums, nums].flatMap({$0})
    }
}
