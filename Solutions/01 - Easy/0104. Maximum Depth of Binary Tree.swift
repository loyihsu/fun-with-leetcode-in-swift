// Problem: https://leetcode.com/problems/maximum-depth-of-binary-tree/

class Solution {
    func max(of array: [Int]) -> Int {
        var max = Int.min
        array.forEach { max = $0 > max ? $0 : max }
        return max
    }
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let tree = root else { return 0 }
        var temp = [Int]()
        if let left = tree.left {
            temp.append(maxDepth(left))
        }
        if let right = tree.right {
            temp.append(maxDepth(right))
        }
        return temp.isEmpty ? 1 : max(of: temp) + 1
    }
}
