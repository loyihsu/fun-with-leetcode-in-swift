// Problem: https://leetcode.com/problems/number-of-good-pairs/

class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var output = 0, count = [Int: Int]()
        nums.forEach {
            output += count[$0] ?? 0
            count[$0] = (count[$0] ?? 0) + 1
        }
        return output
    }
}
