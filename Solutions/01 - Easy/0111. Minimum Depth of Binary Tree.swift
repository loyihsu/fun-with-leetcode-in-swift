// Problem: https://leetcode.com/problems/minimum-depth-of-binary-tree/

extension Array {
    mutating func popFirst() -> Element? {
        return self.isEmpty ? nil : self.removeFirst()    
    }
}
class Solution {
    func minDepth(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        var queue: [(node: TreeNode, depth: Int)] = [(root, 1)]
        while let first = queue.popFirst() {
            if first.node.left == nil && first.node.right == nil {
                return first.depth
            } else {
                if let next = first.node.left {
                    queue.append((next, first.depth+1))
                }
                if let next = first.node.right {
                    queue.append((next, first.depth+1))
                }
            }
        }
        return Int.max
    }
}
