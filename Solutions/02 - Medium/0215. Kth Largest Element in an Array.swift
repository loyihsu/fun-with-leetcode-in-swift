// Problem: https://leetcode.com/problems/kth-largest-element-in-an-array/

class Solution {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        var workingNums = nums
        var find = k

        while workingNums.count > 1 {
            let partition = randomPartition(workingNums)

            if partition.greater.count >= find {
                workingNums = partition.greater
            } else if partition.greater.count + partition.equal.count >= find {
                return partition.equal.first!
            } else {
                find -= partition.greater.count + partition.equal.count
                workingNums = partition.less
            }
        }

        return workingNums.last!
    }

    func randomPartition(_ nums: [Int]) -> (less: [Int], equal: [Int], greater: [Int]) {
        let pivot = nums.randomElement()!
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

        return (less, equal, greater)
    }
}
