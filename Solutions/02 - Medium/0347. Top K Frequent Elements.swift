// Problem: https://leetcode.com/problems/top-k-frequent-elements/

class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var map = [Int: Int]()
        nums.forEach { map[$0] = (map[$0] ?? 0) + 1 }
        var sortedMap = map.sorted { $0.value > $1.value }
        return Array(sortedMap.map { $0.key }[0..<k])
    }
}
