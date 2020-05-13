// Problem: https://leetcode.com/problems/deepest-leaves-sum/

class Solution {
    func deepestLeavesSum(_ root: TreeNode?) -> Int {
        var depthMap = [Int : Int]()        // Use a depth map (dictionary) to track the sum at each level
        var stack: [(TreeNode?,Int)] = [(root, 0)]  // Use a stack to do DFS & track the current level
        var depth = 0                      // Track the max depth of the tree as we do the search
       
        while stack.isEmpty == false {
            if let temp = stack.popLast(), let element = temp.0 {
                if temp.1 > depth { depth = temp.1 }    // Track depth as we do the search
                
                if let depth = depthMap[temp.1] {  
                    depthMap[temp.1] = depth + element.val
                } else {
                    depthMap[temp.1] = element.val
                }

                if let child = element.left { stack.append((child, temp.1 + 1)) }
                if let child = element.right { stack.append((child, temp.1 + 1)) }
            }
        }
        
        if let sum = depthMap[depth] { return sum }
        else { return 0 }
    }
}
