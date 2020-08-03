// Problem: https://leetcode.com/problems/maximum-binary-tree/

class Solution {
    func findMaxNumber(in nums: [Int]) -> (Int, Int) {
        var output = (-1, -1)// Output format: (index, value)
        
        for (index, value) in nums.enumerated() {
            if output.1 < value {
                output = (index, value)
            }
        }
        
        return output
    }
    
    func subarrayMaker(_ nums: [Int], _ div: Int) -> ([Int]?, [Int]?) {
        var left: [Int]? = nil, right: [Int]? = nil
        
        if div > 0 {
            var array = [Int](repeating: 0, count: div)
            for i in 0..<div {
                array[i] = nums[i]
            }
            left = array
        }
        
        if div < nums.count {
            var array = [Int](repeating: 0, count: nums.count-div-1)
            for i in div+1..<nums.count {
                array[i - div - 1] = nums[i]
            }
            right = array
        }
        
        return (left, right)
    }
    
    func constructMaximumBinaryTree(_ nums: [Int]) -> TreeNode? {
        guard nums.count > 0 else { return nil }
        guard nums.count > 1 else { return TreeNode.init(nums[0]) }
        
        let maxNumber = findMaxNumber(in: nums)
        let output = TreeNode.init(maxNumber.1)
        let subarrays = subarrayMaker(nums, maxNumber.0)
        
        if subarrays.0 != nil {
            output.left = constructMaximumBinaryTree(subarrays.0!)
        }
        
        if subarrays.1 != nil {
            output.right = constructMaximumBinaryTree(subarrays.1!)
        }
        
        return output
    }
}
