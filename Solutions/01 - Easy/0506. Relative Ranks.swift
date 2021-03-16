// Problem: https://leetcode.com/problems/relative-ranks/

class Solution {
    func findRelativeRanks(_ score: [Int]) -> [String] {
        var level = [Int: Int]()
        score.sorted(by: >).enumerated().forEach { level[$1] = $0 }
        return score.map {
            switch level[$0] {
            case 0: return "Gold Medal"
            case 1: return "Silver Medal"
            case 2: return "Bronze Medal"
            default: return String(level[$0, default: -1]+1)
            }
        }
    }
}
