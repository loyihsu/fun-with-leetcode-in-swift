// Problem: https://leetcode.com/problems/search-in-a-binary-search-tree/

class Solution {
    func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        var cur = root
        while let temp = cur {
            if val == temp.val {
                return temp
            } else if val > temp.val {
                cur = temp.right
            } else {
                cur = temp.left
            }
        }
        return nil
    }
}
