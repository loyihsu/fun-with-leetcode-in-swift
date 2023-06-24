// Problem: https://leetcode.com/problems/symmetric-tree/

class Solution {
    func isSymmetric(_ root: TreeNode?) -> Bool {
        root?.left == root?.right
    }
}

extension TreeNode: Equatable {
    public static func == (lhs: TreeNode, rhs: TreeNode) -> Bool {
        lhs.val == rhs.val && lhs.left == rhs.right && rhs.left == lhs.right
    }
}
