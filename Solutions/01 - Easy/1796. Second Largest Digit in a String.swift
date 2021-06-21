// Problem: https://leetcode.com/problems/second-largest-digit-in-a-string/

class Solution {
    func secondHighest(_ s: String) -> Int {
        var temp = [Int]()
        for num in s {
            if let num = Int("\(num)") {
                temp.append(num)
            }
        }
        var max = (-1, -1)
        for num in temp {
            max.0 = num > max.0 ? num : max.0
        }
        for num in temp where num != max.0 {
            max.1 = num > max.1 ? num : max.1 
        }
        return max.1
    }
}
