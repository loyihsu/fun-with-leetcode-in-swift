// Problem: https://leetcode.com/problems/valid-perfect-square/

class Solution {
    func isPerfectSquare(_ num: Int) -> Bool {
        guard num > 1 else { return true }
        var root = num / 2
        var temp = 0
        repeat {
            temp = root
            root = (temp + num/temp)/2
        } while (temp - root > 1)
        return num == root * root
    }
}
