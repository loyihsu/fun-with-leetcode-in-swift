// Problem: https://leetcode.com/problems/insert-into-a-binary-search-tree/

class Solution {
    func insertIntoBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        guard root != nil else { return TreeNode.init(val) }
        var temp = root, sig = false
        
        while !sig {
            if temp!.val > val {
                if temp!.left != nil {
                    temp = temp!.left
                } else {
                    temp!.left = TreeNode.init(val)
                    sig = true
                }
            } else {
                if temp!.right != nil {
                    temp = temp!.right
                } else {
                    temp!.right = TreeNode.init(val)
                    sig = true
                }
            }
        }
        
        return root
    }
}
