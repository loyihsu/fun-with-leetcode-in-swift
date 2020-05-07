// Problem: https://leetcode.com/problems/merge-two-binary-trees/

class Solution {
    func mergeTrees(_ t1: TreeNode?, _ t2: TreeNode?) -> TreeNode? {
        var value = 0
        var newTree: TreeNode?
        
        if let tree1 = t1, let tree2 = t2 {
            newTree = TreeNode.init(tree1.val + tree2.val)
            newTree!.left = mergeTrees(tree1.left, tree2.left)
            newTree!.right = mergeTrees(tree1.right, tree2.right)
            
            return newTree
        } else if let tree1 = t1 {
            newTree = TreeNode.init(tree1.val)
            newTree!.left = tree1.left
            newTree!.right = tree1.right
            
            return newTree
        } else if let tree2 = t2 {
            newTree = TreeNode.init(tree2.val)
            newTree!.left = tree2.left
            newTree!.right = tree2.right
            
            return newTree
        }
        
        return nil
    }
}
