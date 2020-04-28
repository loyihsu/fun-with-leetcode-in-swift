// Problem: https://leetcode.com/problems/search-in-a-binary-search-tree/

class Solution {
    func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        if let r = root {
            if r.val > val {
                return searchBST(r.left, val)
            } else if r.val < val {
                return searchBST(r.right, val)
            } else if r.val == val {
                return r
            }
        }
        
        return nil
    }
}
