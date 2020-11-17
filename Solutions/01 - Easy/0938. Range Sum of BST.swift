// Problem: https://leetcode.com/problems/range-sum-of-bst/

class Solution {
    func rangeSumBST(_ root: TreeNode?, _ L: Int, _ R: Int) -> Int {
        var sum = 0, r = root, stack = [TreeNode]()
        let small = min(L, R), big = max(L, R)
        while let temp = r {
            if temp.val <= big && temp.val >= small {
                sum += temp.val
            }
            if temp.val > big || temp.val <= big && temp.val >= small {
                if let l = temp.left {
                    stack.append(l)
                }
            }
            if temp.val < small || temp.val <= big && temp.val >= small {
                if let r = temp.right {
                    stack.append(r)
                }
            }
            if !stack.isEmpty {
                r = stack.popLast()
            } else {
                break
            }
        }
        return sum
    }
}
