// Problem: https://leetcode.com/problems/rank-transform-of-an-array/

class Solution {
    func arrayRankTransform(_ arr: [Int]) -> [Int] {
        var searchMap = [Int: Int]()
        Array(Set(arr)).sorted().enumerated().forEach { searchMap[$1] = $0 }
        return arr.map { searchMap[$0]! + 1 }
    }
}
