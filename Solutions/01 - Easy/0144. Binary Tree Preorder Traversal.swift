// Problem: https://leetcode.com/problems/binary-tree-preorder-traversal/

class Solution {
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }
        var output = [root.val]
        output += preorderTraversal(root.left)
        output += preorderTraversal(root.right)
        return output
    }
}
