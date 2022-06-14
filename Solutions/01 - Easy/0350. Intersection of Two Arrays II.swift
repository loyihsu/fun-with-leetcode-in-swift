// Problem: https://leetcode.com/problems/intersection-of-two-arrays-ii/

class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var map1 = [Int: Int](), map2 = [Int: Int]()
        nums1.forEach { map1[$0, default: 0] += 1 }
        nums2.forEach { map2[$0, default: 0] += 1 }
        var output = [Int]()
        for item in map1.keys where map2[item] != nil {
            let smaller = map1[item]! < map2[item]! ? map1[item]! : map2[item]!
            for _ in 0 ..< smaller {
                output.append(item)
            }
        }
        return output
    }
}
