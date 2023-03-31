// Problem: https://leetcode.com/problems/balanced-binary-tree/

class Solution {
    func depths(_ root: TreeNode, _ depth: Int = 1) -> Int {
        var max = depth, stack: [(node: TreeNode, depth: Int)] = [(root, depth)]
        while let current = stack.popLast() {
            if max < current.depth {
                max = current.depth
            }
            if let left = current.node.left {
                stack.append((left, current.depth + 1))
            }
            if let right = current.node.right {
                stack.append((right, current.depth + 1))
            }
        }
        return max
    }

    func isBalanced(_ root: TreeNode?) -> Bool {
        guard let root else { return true }
        var depths: (left: Int, right: Int) = (0, 0)
        if let left = root.left {
            depths.left = self.depths(left)
        }
        if let right = root.right {
            depths.right = self.depths(right)
        }
        guard depths.left - depths.right <= 1, depths.left - depths.right >= -1 else { return false }
        var balances: (left: Bool, right: Bool) = (true, true)
        if let left = root.left {
            balances.left = isBalanced(left)
        }
        if let right = root.right {
            balances.right = isBalanced(right)
        }
        return balances.left && balances.right
    }
}
