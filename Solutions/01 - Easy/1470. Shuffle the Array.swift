// Problem: https://leetcode.com/problems/shuffle-the-array/

class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var output = [Int]()
        
        for i in 0..<n {
            output.append(nums[i])
            output.append(nums[i+n])
        }
        
        return output
    }
}
