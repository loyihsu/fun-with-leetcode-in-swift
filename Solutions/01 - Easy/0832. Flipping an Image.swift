// Problem: https://leetcode.com/problems/flipping-an-image/

class Solution {
    func flipAndInvertImage(_ A: [[Int]]) -> [[Int]] {
        var output = [[Int]](), temp = [Int]()
        for rio in A {
            output.append(rio.reversed().map { $0 == 1 ? 0 : 1 })
        }
        return output
    }
}
