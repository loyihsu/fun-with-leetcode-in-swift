// Problem: https://leetcode.com/problems/find-n-unique-integers-sum-up-to-zero/

class Solution {
    func sumZero(_ n: Int) -> [Int] {
        guard n > 1 else { return [0] }
        var output = [Int](), resting = n

        if resting % 2 == 1 {
            output.append(0)
            resting -= 1
        }
        for val in 1 ... resting / 2 {
            output.append(val)
            output.append(-val)
        }

        return output
    }
}
