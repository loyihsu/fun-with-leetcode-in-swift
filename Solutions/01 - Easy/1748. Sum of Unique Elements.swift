// Problem: https://leetcode.com/problems/sum-of-unique-elements/

class Solution {
    func sumOfUnique(_ nums: [Int]) -> Int {
        var book = [Int](repeating: 0, count: 101), output = 0
        for num in nums {
            book[num] += 1
        }
        for idx in book.indices where book[idx] == 1 {
            output += idx
        }
        return output
    }
}
