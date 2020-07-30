// Problem: https://leetcode.com/problems/how-many-numbers-are-smaller-than-the-current-number/

class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var search = [Int](repeating: 0, count: 101)
        var smaller = [Int](repeating: 0, count: 101)
        var output = [Int]()
        var sum = 0
        
        for n in nums {
            search[n] += 1
        }
        
        for (id, s) in search.enumerated() {
            smaller[id] = sum
            sum += s
        }
        
        for n in nums {
            output.append(smaller[n])
        }
        
        return output
    }
}
