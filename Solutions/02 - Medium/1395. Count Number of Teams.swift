// Problem: https://leetcode.com/problems/count-number-of-teams/

class Solution {
    func numTeams(_ rating: [Int]) -> Int {
        guard rating.count >= 3 else { return 0 }
        
        var count = 0, leftSmall = 0, rightSmall = 0, leftLarge = 0, rightLarge = 0
        
        for i in 0..<rating.count {
            leftSmall = 0
            rightSmall = 0
            leftLarge = 0
            rightLarge = 0
            
            for j in 0..<i {
                if rating[j] < rating[i] {
                    leftSmall += 1
                } else {
                    leftLarge += 1
                }
            }
            
            for j in i+1..<rating.count {
                if rating[i] > rating[j] {
                    rightSmall += 1
                } else {
                    rightLarge += 1
                }
            }
            
            count += leftSmall * rightLarge    // increasing case - ex. (2, 3, 4)
            count += leftLarge * rightSmall    // decreasing case - ex. (5, 4, 1)
        }
        
        return count   
    }
}
