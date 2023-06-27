// Problem: https://leetcode.com/problems/partition-array-according-to-given-pivot/description/

class Solution {
    func pivotArray(_ nums: [Int], _ pivot: Int) -> [Int] {
        var less = [Int]()
        var equal = [Int]()
        var greater = [Int]()

        nums.forEach {
            if $0 < pivot {
                less.append($0)
            } else if $0 == pivot {
                equal.append($0)
            } else {
                greater.append($0)
            }
        }

        return less + equal + greater
    }
}
