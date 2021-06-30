// Problem: https://leetcode.com/problems/find-center-of-star-graph/

class Solution {
    func findCenter(_ edges: [[Int]]) -> Int {
        var map = [Int: Int](), max = (0, 0)
        for edge in edges {
            map[edge[0]] = (map[edge[0]] ?? 0) + 1
            map[edge[1]] = (map[edge[1]] ?? 0) + 1
        }
        for key in map.keys where (map[key] ?? 0) > max.0 {
            max = ((map[key] ?? 0), key)
        }
        return max.1
    }
}
