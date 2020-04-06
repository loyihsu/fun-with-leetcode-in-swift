// Problem: https://leetcode.com/problems/nim-game/

class Solution {
    func canWinNim(_ n: Int) -> Bool {
        return n % 4 != 0
    }
}