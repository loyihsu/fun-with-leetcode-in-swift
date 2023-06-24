// Question: https://leetcode.com/problems/container-with-most-water/description/

class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var lhs = 0
        var rhs = height.count - 1

        var maximum = Int.min

        func updateMaximumIfNeeded() {
            let containerWidth = rhs - lhs
            let containerHeight = min(height[lhs], height[rhs])
            maximum = max(maximum, containerWidth * containerHeight)
        }

        updateMaximumIfNeeded()

        while lhs < rhs {
            if height[lhs] < height[rhs] {
                lhs += 1
            } else if height[lhs] > height[rhs] {
                rhs -= 1
            } else {
                lhs += 1
                rhs -= 1
            }
            updateMaximumIfNeeded()
        }

        return maximum
    }
}
