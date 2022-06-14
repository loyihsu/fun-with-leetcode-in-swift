// Problem: https://leetcode.com/problems/binary-search-tree-to-greater-sum-tree/

class Solution {
    func bstToGst(_ root: TreeNode?) -> TreeNode? {
        var sum = 0
        search(root, sum: &sum)

        return root
    }

    func search(_ root: TreeNode?, sum: inout Int) {
        guard let root = root else { return }

        search(root.right, sum: &sum)
        sum += root.val
        root.val = sum
        search(root.left, sum: &sum)
    }
}
