// Problem: https://leetcode.com/problems/left-and-right-sum-differences/

class Solution {
    func leftRigthDifference(_ nums: [Int]) -> [Int] {
        var leftSum = 0
        var rightSum = nums.reduce(0, +)

        var output = [Int]()

        for num in nums {
            leftSum += num
            output.append(abs(leftSum - rightSum))
            rightSum -= num
        }

        return output
    }
}
