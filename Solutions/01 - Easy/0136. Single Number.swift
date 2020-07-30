// Problem: https://leetcode.com/problems/single-number/

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var book = [Int : Int]()
        var output = -1
        
        for n in nums {
            if book[n] != nil {
                book[n]! += 1
            } else {
                book[n] = 1
            }
        }
        
        for i in book {
            if i.value == 1 {
                output = i.key 
            }
        }
        
        return output
    }
}
