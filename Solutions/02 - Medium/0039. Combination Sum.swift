// Problem: https://leetcode.com/problems/combination-sum/

class Solution {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var combination = [Int](repeating: 0, count: candidates.count)
        var results = [Set<[Int]>](repeating: Set<[Int]>(), count: target+1)
        results[0] = [combination]
        for idx in results.indices where !results[idx].isEmpty {
            for jdx in candidates.indices where idx + candidates[jdx] < results.count {
                for var result in results[idx] {
                    result[jdx] += 1
                    results[idx + candidates[jdx]].insert(result)
                }
            }
        }
        return results[target].map({ result in result.enumerated().flatMap({ [Int](repeating: candidates[$0], count: $1) }) })
    }
}
