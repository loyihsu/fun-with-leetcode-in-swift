// Problem: https://leetcode.com/problems/single-number/

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var book = [Int: Int](), output = -1
        for num in nums {
            book[num] = (book[num] ?? 0) + 1
        }
        for item in book where item.value == 1 {
            output = item.key
        }
        return output
    }
}
