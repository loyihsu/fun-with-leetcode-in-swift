// Problem: https://leetcode.com/problems/robot-return-to-origin/

class Solution {
    func judgeCircle(_ moves: String) -> Bool {
        var position = (0,0)
        for move in moves {
            if move == "R" { position.1 += 1 }
            else if move == "L" { position.1 -= 1 }
            else if move == "U" { position.0 += 1 }
            else if move == "D" { position.0 -= 1 }
        }
        return position == (0,0)
    }
}
