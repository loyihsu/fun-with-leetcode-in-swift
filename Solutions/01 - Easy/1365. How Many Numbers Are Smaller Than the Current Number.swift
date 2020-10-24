// Problem: https://leetcode.com/problems/how-many-numbers-are-smaller-than-the-current-number/

class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var search = [Int](repeating: 0, count: 101), smaller = [Int](repeating: 0, count: 101), output = [Int](), sum = 0
        nums.forEach { search[$0] += 1 }
        for (id, s) in search.enumerated() {
            smaller[id] = sum
            sum += s
        }
        nums.forEach { output.append(smaller[$0]) }
        return output
    }
}
