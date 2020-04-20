// Problem: https://leetcode.com/problems/how-many-numbers-are-smaller-than-the-current-number/

class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var output = [Int]()
        var sorted = nums.sorted()
        
        for i in nums {
            if let id = sorted.firstIndex(of: i) {
                output.append(id)
            }
        }
        
        return output
    }
}
