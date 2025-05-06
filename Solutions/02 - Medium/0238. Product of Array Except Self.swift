// Problem: https://leetcode.com/problems/product-of-array-except-self/

class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        let leftProduct = nums.reduce(into: [Int]()) {
            let previous = $0.last ?? 1
            $0.append(previous * $1)
        }
        let rightProduct = Array(
            nums
                .reversed()
                .reduce(into: [Int]()) {
                    let previous = $0.last ?? 1
                    $0.append(previous * $1)
                }
                .reversed()
        )

        var output = [Int](repeating: 0, count: nums.count)

        for index in output.indices {
            let left = index - 1 >= 0 ? leftProduct[index - 1] : 1
            let right = index + 1 < nums.count ? rightProduct[index + 1] : 1
            output[index] = left * right
        }

        return output
    }
}
