// Problem: https://leetcode.com/problems/count-complete-tree-nodes/

class Solution {
    func countNodes(_ root: TreeNode?) -> Int {
        guard let root else { return 0 }

        var next = [root]
        var count = 0

        while let temp = next.popLast() {
            count += 1

            if let left = temp.left {
                next.append(left)
            }

            if let right = temp.right {
                next.append(right)
            }
        }

        return count
    }
}
