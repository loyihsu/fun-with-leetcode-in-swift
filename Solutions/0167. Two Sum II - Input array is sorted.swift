// Problem: https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/

class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var i=0, j=numbers.count-1
        
        while i<j {
            if numbers[i] + numbers[j] == target {
                return [i+1, j+1]
            } else if numbers[i] + numbers[j] > target {
                j-=1
            } else if numbers[i] + numbers[j] < target {
                i+=1
            }            
        }
        
        return [Int]()
    }
}