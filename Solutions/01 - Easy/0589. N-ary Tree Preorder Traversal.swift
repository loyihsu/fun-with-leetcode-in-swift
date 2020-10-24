// Problem: https://leetcode.com/problems/n-ary-tree-preorder-traversal/

class Solution {
    func preorder(_ root: Node?) -> [Int] {
        var output = [Int]()
        if let r = root {
            output = [r.val]
            for c in r.children {
                output += preorder(c)
            }        
        }
        return output
    }
}
