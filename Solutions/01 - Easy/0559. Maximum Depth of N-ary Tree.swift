// Problem: https://leetcode.com/problems/maximum-depth-of-n-ary-tree/

class Solution {
    func explore(depth: Int, current: Node) -> Int {
        if current.children.isEmpty {
            return depth
        } else {
            var max = 0
            for child in current.children {
                var temp = explore(depth: depth + 1, current: child)
                if temp > max {
                    max = temp
                }
            }
            return max
        }
    }
    func maxDepth(_ root: Node?) -> Int {
        guard let root = root else { return 0 }
        guard root.children.isEmpty != true else { return 1 }
        var max = 0
        for child in root.children {
            var temp = explore(depth: 2, current: child)
            if temp > max {
                max = temp
            }
        }
        return max
    }
}
