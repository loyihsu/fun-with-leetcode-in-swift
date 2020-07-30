// Problem: https://leetcode.com/problems/maximum-depth-of-binary-tree/

class Solution {
    func maxDepth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        
        var maxDepth = 1
        var curDepth = 1
        
        var queue = [(TreeNode, Int)]()
        
        var temp = root
        
        while temp != nil {
            if temp!.left == nil && temp!.right == nil {
                if queue.count == 0 {
                    break
                }
            } else {
                if let t = temp, let left = t.left {
                    queue.append((left,curDepth+1))
                }
                
                if let t = temp, let right = t.right {
                    queue.append((right,curDepth+1))
                }
            }
            
            let first = queue.removeFirst()
            
            temp = first.0
            curDepth = first.1
            
            if curDepth > maxDepth {
                maxDepth = curDepth
            }
        }
        
        return maxDepth
    }
}
