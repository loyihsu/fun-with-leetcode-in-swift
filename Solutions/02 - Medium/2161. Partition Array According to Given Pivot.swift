// Problem: https://leetcode.com/problems/partition-array-according-to-given-pivot/description/

class Solution {
    func pivotArray(_ nums: [Int], _ pivot: Int) -> [Int] {
        var less = [Int]()
        var equal = [Int]()
        var greater = [Int]()

        for num in nums {
            if num < pivot {
                less.append(num)
            } else if num == pivot {
                equal.append(num)
            } else {
                greater.append(num)
            }
        }

        return less + equal + greater
    }
}
