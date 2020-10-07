// Problem: https://leetcode.com/problems/univalued-binary-tree/

class Solution {
    func isUnivalTree(_ root: TreeNode?) -> Bool {
        var temp = root!.val
        return check(root!, root!.val)
    }
    
    func check(_ tree: TreeNode, _ value: Int) -> Bool {
        guard tree.val == value else { return false }
        if let left = tree.left, check(left, value) == false {
            return false
        }
        if let right = tree.right, check(right, value) == false {
            return false
        }
        return true
    }
}
