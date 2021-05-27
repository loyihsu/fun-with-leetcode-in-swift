// Problem: https://leetcode.com/problems/n-repeated-element-in-size-2n-array/

class Solution {
    func repeatedNTimes(_ A: [Int]) -> Int {
        let repeatedTimes = A.count / 2
        var map = [Int: Int]()

        for item in A {
            map[item] = (map[item] ?? 0) + 1
        }

        for (key, value) in map where value == repeatedTimes {
            return key
        }

        return -1
    }
}
