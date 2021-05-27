// Problem: https://leetcode.com/problems/subtree-of-another-tree/

class Solution {
    func isSubtree(_ s: TreeNode?, _ t: TreeNode?) -> Bool {
        guard let left = s, let right = t else { return s == nil && t == nil }
        return isEqual(left, right) || isSubtree(left.left, right) || isSubtree(left.right, right)
    }
    func isEqual(_ s: TreeNode?, _ t: TreeNode?) -> Bool {
        guard let left = s, let right = t else { return s == nil && t == nil }
        return left.val == right.val && isEqual(left.left, right.left) && isEqual(left.right, right.right)
    }
}
