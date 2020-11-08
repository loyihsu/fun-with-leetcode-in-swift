// Problem: https://leetcode.com/problems/sum-of-root-to-leaf-binary-numbers/

class Solution {
    func sumRootToLeaf(_ root: TreeNode?) -> Int {
        var stack: [(Int, TreeNode)] = [(0, root!)], output = 0
        while let current = stack.popLast() {
            if current.1.left == nil && current.1.right == nil {
                output += current.0 * 2 + current.1.val
            } else {
                if let left = current.1.left {
                    stack.append((current.0 * 2 + current.1.val, left))
                }
                if let right = current.1.right {
                    stack.append((current.0 * 2 + current.1.val, right))
                }
            }
        }
        return output
    }
}
