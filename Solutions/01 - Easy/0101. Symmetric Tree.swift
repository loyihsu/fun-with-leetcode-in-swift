// Problem: https://leetcode.com/problems/symmetric-tree/

class Solution {
    func isSymmetric(_ root: TreeNode?) -> Bool {
        return root?.left == root?.right
    }
}
extension TreeNode: Equatable {
    public static func == (lhs: TreeNode, rhs: TreeNode) -> Bool {
        return lhs.val == rhs.val && lhs.left == rhs.right && rhs.left == lhs.right
    }
}
