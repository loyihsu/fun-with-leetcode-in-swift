// Problem: https://leetcode.com/problems/count-of-matches-in-tournament/

class Solution {
    func numberOfMatches(_ n: Int) -> Int {
        var teams = n, sum = 0
        while teams > 1 {
            sum += teams / 2
            teams = teams % 2 == 0 ? teams / 2 : teams / 2 + 1
        }
        return sum
    }
}
