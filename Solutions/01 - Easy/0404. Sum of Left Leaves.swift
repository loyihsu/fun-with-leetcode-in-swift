// Problem: https://leetcode.com/problems/sum-of-left-leaves/

class Solution {
    func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
        guard root != nil else { return 0 }
        var list: [(TreeNode, String)] = [(root!, "root")], output = 0
        while let temp = list.popLast() {
            if temp.0.left == nil && temp.0.right == nil && temp.1 == "left" {
                output += temp.0.val
            } else {
                if let node = temp.0.left { list.append((node, "left")) }
                if let node = temp.0.right { list.append((node, "right")) }
            }
        }
        return output
    }
}
