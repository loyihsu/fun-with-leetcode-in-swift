// Problem: https://leetcode.com/problems/construct-string-from-binary-tree/

class Solution {
    func tree2str(_ t: TreeNode?) -> String {
        guard let tree = t else { return "" }
        var output = "\(tree.val)"
        let left = tree2str(tree.left), right = tree2str(tree.right)
        if !(left == right && right == "") {
            output += "(\(left))"
            if right != "" { output += "(\(right))" }
        }
        return output
    }
}
