// Problem: https://leetcode.com/problems/merge-sorted-array/

class Solution {
    func insert(into array: inout [Int], at position: inout Int, from elementArr: [Int], at elementPos: inout Int) {
        array[position] = elementArr[elementPos]
        (position, elementPos) = (position + 1, elementPos + 1)
    }

    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var idx = 0, jdx = 0, kdx = 0
        let n1 = Array(nums1[0 ..< m])
        while idx < m, jdx < n {
            if n1[idx] <= nums2[jdx] {
                insert(into: &nums1, at: &kdx, from: n1, at: &idx)
            } else {
                insert(into: &nums1, at: &kdx, from: nums2, at: &jdx)
            }
        }
        while idx < m {
            insert(into: &nums1, at: &kdx, from: n1, at: &idx)
        }
        while jdx < n {
            insert(into: &nums1, at: &kdx, from: nums2, at: &jdx)
        }
    }
}
