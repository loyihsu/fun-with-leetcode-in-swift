// Problem: https://leetcode.com/problems/shuffle-the-array/

class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var output = [Int]()
        for index in 0 ..< n {
            output.append(nums[index])
            output.append(nums[index + n])
        }
        return output
    }
}
