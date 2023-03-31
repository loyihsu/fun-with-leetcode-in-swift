// Problem: https://leetcode.com/problems/invert-binary-tree/

class Solution {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        guard let root else { return nil }
        if let left = root.left {
            root.left = invertTree(left)
        }
        if let right = root.right {
            root.right = invertTree(right)
        }
        var temp = root.right
        root.right = root.left
        root.left = temp
        return root
    }
}
