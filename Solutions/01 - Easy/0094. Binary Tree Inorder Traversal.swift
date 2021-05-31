// Problem: https://leetcode.com/problems/binary-tree-inorder-traversal/

class Solution {
    func inorder(_ node: TreeNode?) -> [Int] {
        guard let node = node else { return [] }
        var temp = inorder(node.left)
        temp.append(node.val)
        temp += inorder(node.right)
        return temp
    }
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        return inorder(root)
    }
}
