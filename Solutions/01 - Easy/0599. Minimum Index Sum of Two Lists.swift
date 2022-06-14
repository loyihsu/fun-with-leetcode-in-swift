// Problem: https://leetcode.com/problems/minimum-index-sum-of-two-lists/

class Solution {
    func minimum(_ map: [String: Int]) -> Int {
        var min = Int.max
        for (_, value) in map where value < min {
            min = value
        }
        return min
    }

    func findRestaurant(_ list1: [String], _ list2: [String]) -> [String] {
        var map = [String: Int](), commons = list1.filter { list2.contains($0) }
        for (index, value) in list1.enumerated() where commons.contains(value) {
            map[value] = index
        }
        for (index, value) in list2.enumerated() where commons.contains(value) {
            map[value] = (map[value] ?? 0) + index
        }
        let min = minimum(map)
        return Array(map.filter { $0.value == min }.keys)
    }
}
