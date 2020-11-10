// Problem: https://leetcode.com/problems/maximum-number-of-balloons/

class Solution {
    func maxNumberOfBalloons(_ text: String) -> Int {
        var map = [Character: Int](), output = 0, flag = false
        text.forEach { map[$0] = (map[$0] ?? 0) + 1 }
        while let b = map["b"], b > 0 {
            flag = true
            for char in "balloon" {
                if let c = map[char], c > 0 {
                    map[char] = c - 1
                } else {
                    flag = false
                    break
                }
            }
            if flag == true {
                output += 1
            }
        }
        return output
    }
}
