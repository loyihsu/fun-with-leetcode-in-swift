// Problem: https://leetcode.com/problems/how-many-numbers-are-smaller-than-the-current-number/

class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var sorted = nums.sorted()
        var posMap = [Int:Int]()    // Use a position map for faster searching 
        
        for (index,value) in sorted.enumerated() where posMap[value] == nil {
            posMap[value] = index
        }
        
        return nums.map { posMap[$0]! }
    }
}
