// Problem: https://leetcode.com/problems/rearrange-array-elements-by-sign/description/?envType=featured-list&envId=top-google-questions

class Solution {
    func rearrangeArray(_ nums: [Int]) -> [Int] {
        var output = [Int](repeating: 0, count: nums.count)

        var posIndex = 0
        var negIndex = 1

        for num in nums {
            if num >= 0 {
                output[posIndex] = num
                posIndex += 2
            } else if num < 0 {
                output[negIndex] = num
                negIndex += 2
            }
        }

        return output
    }
}
