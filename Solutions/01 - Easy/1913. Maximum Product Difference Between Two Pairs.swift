// Problem: https://leetcode.com/problems/maximum-product-difference-between-two-pairs/

class Solution {
    func maxProductDifference(_ nums: [Int]) -> Int {
        var fourNumbers = [0, 0, 10001, 10001], pickedPosition = Set<Int>()
        // Big side
        for round in 0...1 {
            var positionBuffer = -1
            for (idx, num) in nums.enumerated() where !pickedPosition.contains(idx) && num > fourNumbers[round] {
                (positionBuffer, fourNumbers[round]) = (idx, num)
            }
            pickedPosition.insert(positionBuffer)
        }
        // Small side
        for round in 2...3 {
            var positionBuffer = -1
            for (idx, num) in nums.enumerated() where !pickedPosition.contains(idx) && num < fourNumbers[round] {
                (positionBuffer, fourNumbers[round]) = (idx, num)
            }
            pickedPosition.insert(positionBuffer)
        }
        return fourNumbers[0] * fourNumbers[1] - fourNumbers[2] * fourNumbers[3]
    }
}
