// Problem: https://leetcode.com/problems/contains-duplicate-ii/

class Solution {
    func find(_ val: Int, in array: [Int], left: Int, right: Int) -> Bool {
        guard left <= right else { return false }
        let mid = (left + right) / 2, midvalue = array[mid]
        if midvalue == val {
            return true
        } else if mid > val {
            return find(val, in: array, left: left, right: mid - 1)
        } else {
            return find(val, in: array, left: mid + 1, right: right)
        }
    }

    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        guard k > 0 else { return false }
        var map = [Int: [Int]]()
        for (idx, num) in nums.enumerated() {
            map[num, default: []].append(idx)
        }
        for (_, values) in map where values.count > 1 {
            for value in values {
                for count in 1 ... k {
                    if find(value + count, in: values, left: 0, right: values.count - 1) {
                        return true
                    }
                }
            }
        }
        return false
    }
}
