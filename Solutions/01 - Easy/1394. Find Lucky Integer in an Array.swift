// Problem: https://leetcode.com/problems/find-lucky-integer-in-an-array/

class Solution {
    func findLucky(_ arr: [Int]) -> Int {
        var map = [Int: Int](), max = -1
        for item in arr {
            map[item, default: 0] += 1
        }
        for (key, value) in map where key == value {
            max = max > key ? max : key
        }
        return max
    }
}
