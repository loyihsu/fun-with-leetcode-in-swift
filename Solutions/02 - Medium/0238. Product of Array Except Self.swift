// Problem: https://leetcode.com/problems/product-of-array-except-self/

class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var right = [Int](), output = [Int](), temp = 1
        let ncount = nums.count

        for index in 0..<ncount {
            right.append(temp)
            temp *= nums[ncount-index-1]
        }

        temp = 1

        for index in 0..<ncount {
            output.append(temp * right[ncount-index-1])
            temp *= nums[index]
        }

        return output
    }
}
