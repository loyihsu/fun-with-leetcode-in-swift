// Problem: https://leetcode.com/problems/two-furthest-houses-with-different-colors/

class Solution {
    func maxDistance(_ colors: [Int]) -> Int {
        var temp = (left: -1, right: -1)
        for idx in colors.indices where temp.left == -1 || temp.right == -1 {
            if colors[colors.count - idx - 1] != colors[0], temp.left == -1 {
                temp.left = colors.count - idx - 1
            }
            if colors[colors.count - 1] != colors[idx], temp.right == -1 {
                temp.right = colors.count - 1 - idx
            }
        }
        return max(temp.left, temp.right)
    }
}
