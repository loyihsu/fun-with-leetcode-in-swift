// Problem: https://leetcode.com/problems/deepest-leaves-sum/

class Solution {
    func deepestLeavesSum(_ root: TreeNode?) -> Int {
        var levelSum = 0, maxDepth = 0
        var stack: [(TreeNode, Int)] = [(root!, 0)], temp = stack.first!
       
        while stack.isEmpty == false {
            temp = stack.popLast()!
            if temp.1 > maxDepth {
                maxDepth = temp.1
                levelSum = 0    
            }

            if temp.1 == maxDepth { levelSum += temp.0.val }
            
            if temp.0.left != nil { stack.append((temp.0.left!, temp.1 + 1)) }
            if temp.0.right != nil { stack.append((temp.0.right!, temp.1 + 1)) }
        }
        
        return levelSum
    }
}
