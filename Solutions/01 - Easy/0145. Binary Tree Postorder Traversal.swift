// Problem: https://leetcode.com/problems/binary-tree-postorder-traversal/

class Solution {
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }
        var output = postorderTraversal(root.left)
        output += postorderTraversal(root.right)
        output.append(root.val)
        return output
    }
}
