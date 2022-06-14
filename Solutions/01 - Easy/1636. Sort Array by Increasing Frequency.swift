// Problem: https://leetcode.com/problems/sort-array-by-increasing-frequency/

class Solution {
    func frequencySort(_ nums: [Int]) -> [Int] {
        var output = nums, pos = 0, map = [Int: Int]()
        nums.forEach { map[$0, default: 0] += 1 }
        let sortedMap = map.sorted {
            if $0.value == $1.value {
                return $0.key > $1.key
            } else {
                return $0.value < $1.value
            }
        }
        for (key, val) in sortedMap {
            for _ in 0 ..< val {
                output[pos] = key
                pos += 1
            }
        }
        return output
    }
}
