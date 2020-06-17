// Problem: https://leetcode.com/problems/median-of-two-sorted-arrays/

class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let allElementsCount = nums1.count + nums2.count
        let centre = allElementsCount % 2 == 0 ? (allElementsCount/2, allElementsCount/2 + 1) : (allElementsCount/2 + 1, allElementsCount/2 + 1)
        
        var count = 0, index1 = 0, index2 = 0, prev = 0, current = 0
        
        while centre.0 == centre.1 ? count < centre.0 : count < centre.1 {
            prev = current
            if index1 < nums1.count && index2 < nums2.count {
                if nums1[index1] < nums2[index2] {
                    current = nums1[index1]
                    index1 += 1
                } else {
                    current = nums2[index2]
                    index2 += 1
                }
            } else if index1 < nums1.count {
                current = nums1[index1]
                index1 += 1
            } else {
                current = nums2[index2]
                index2 += 1
            }

            count += 1
        }

        return centre.0 == centre.1 ? Double(current) : Double(prev + current) / 2
    }
}
