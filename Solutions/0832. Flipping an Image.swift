// Problem: https://leetcode.com/problems/flipping-an-image/

class Solution {
    func flipAndInvertImage(_ A: [[Int]]) -> [[Int]] {
        var output = [[Int]](), temp = [Int]()

        for rio in A {
            temp = []
            for t in rio.reversed() {
                    temp.append(t == 1 ? 0 : 1)
            }
            output.append(temp)
        }

        return output
    }
}
