// Problem: https://leetcode.com/problems/kids-with-the-greatest-number-of-candies/

class Solution {
    func findMax(_ arr: [Int]) -> Int {
        var max = 0
        arr.forEach { max = $0 > max ? $0 : max }
        return max
    }
    
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        let max = findMax(candies)
        var output = [Bool]()
        var temp = false
        
        for c in candies {
            temp = c + extraCandies >= max ? true : false
            output.append(temp)
        }
        
        return output
    }
}