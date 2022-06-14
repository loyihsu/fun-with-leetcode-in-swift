// Problem: https://leetcode.com/problems/convert-sorted-array-to-binary-search-tree/

class Solution {
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        guard nums.count > 0 else { return nil }
        let center = nums.count / 2, node = TreeNode(nums[center])
        node.left = sortedArrayToBST(Array(nums[0 ..< center]))
        node.right = sortedArrayToBST(Array(nums[center + 1 ..< nums.count]))
        return node
    }
}
