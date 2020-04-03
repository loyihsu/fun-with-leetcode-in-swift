// Problem: https://leetcode.com/problems/median-of-two-sorted-arrays/

class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var arr = [Int]()
        var pointer1 = 0, pointer2 = 0
        
        while arr.count < nums1.count + nums2.count {
            if pointer1 < nums1.count && pointer2 < nums2.count {
                if (nums1[pointer1] < nums2[pointer2]) {
                    arr.append(nums1[pointer1])
                    pointer1 += 1
                } else {
                    arr.append(nums2[pointer2])
                    pointer2 += 1
                }
            } else if pointer1 < nums1.count {
                arr += nums1[pointer1..<nums1.count]
                pointer1 = nums1.count
            } else if pointer2 < nums2.count {
                arr += nums2[pointer2..<nums2.count]
                pointer2 = nums2.count
            }
        }
        
        if arr.count%2 == 0 {
            return (Double(arr[arr.count/2])+Double(arr[arr.count/2-1]))/2
        } else {
            return Double(arr[arr.count/2])
        }
    }
}
