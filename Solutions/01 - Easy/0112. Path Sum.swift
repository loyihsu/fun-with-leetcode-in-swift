// Problem: https://leetcode.com/problems/path-sum/

class Solution {
    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
        guard let root = root else { return false }
        var stack: [(node: TreeNode, left: Int)] = [(root, targetSum)]
        while let cur = stack.popLast() {
            if cur.node.left == nil, cur.node.right == nil, cur.left == cur.node.val {
                return true
            }
            for child in [cur.node.left, cur.node.right].compactMap({ $0 }) {
                stack.append((child, cur.left - cur.node.val))
            }
        }
        return false
    }
}
