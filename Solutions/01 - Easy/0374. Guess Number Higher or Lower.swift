// Problem: https://leetcode.com/problems/guess-number-higher-or-lower/

class Solution: GuessGame {
    func guessNumber(_ n: Int) -> Int {
        var lower = 1, higher = n
        while true {
            var mid = (lower + higher) / 2
            if guess(mid) == 0 {
                return mid
            } else if guess(mid) == 1 {
                lower = mid + 1
            } else if guess(mid) == -1 {
                higher = mid - 1
            }
        }
    }
}
