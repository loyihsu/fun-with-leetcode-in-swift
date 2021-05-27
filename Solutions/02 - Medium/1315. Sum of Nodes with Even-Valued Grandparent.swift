// Problem: https://leetcode.com/problems/sum-of-nodes-with-even-valued-grandparent/

class Solution {
    func makeSum(of tree: TreeNode?, _ sum: Int) -> Int {
        guard tree != nil else { return sum }
        var tempSum = sum

        if tree!.val % 2 == 0 {
            if let value = tree!.left?.left?.val {
                tempSum += value
            }
            if let value = tree!.left?.right?.val {
                tempSum += value
            }
            if let value = tree!.right?.left?.val {
                tempSum += value
            }
            if let value = tree!.right?.right?.val {
                tempSum += value
            }
        }

        tempSum = makeSum(of: tree!.left, tempSum)
        tempSum = makeSum(of: tree!.right, tempSum)
        return tempSum
    }

    func sumEvenGrandparent(_ root: TreeNode?) -> Int {
        return makeSum(of: root, 0)
    }
}
