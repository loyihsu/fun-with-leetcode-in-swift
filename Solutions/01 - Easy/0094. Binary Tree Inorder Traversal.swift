// Problem: https://leetcode.com/problems/binary-tree-inorder-traversal/

class Solution {
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let node = root else { return [] }
        var temp = inorderTraversal(node.left)
        temp.append(node.val)
        temp += inorderTraversal(node.right)
        return temp
    }
}