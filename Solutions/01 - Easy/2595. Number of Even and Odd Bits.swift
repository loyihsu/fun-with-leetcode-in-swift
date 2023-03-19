// Problem: https://leetcode.com/problems/number-of-even-and-odd-bits/

class Solution {
    func evenOddBit(_ n: Int) -> [Int] {
        makeReversedBinaryString(of: n)
            .enumerated()
            .reduce([0, 0]) { partial, tuple in
                let (index, character) = tuple
                if character == "1" {
                    if index % 2 == 0 {
                        return [partial[0] + 1, partial[1]]
                    } else {
                        return [partial[0], partial[1] + 1]
                    }
                }
                return partial
            }
    }

    private func makeReversedBinaryString(of integer: Int) -> String {
        var integer = integer
        var output = [Int]()
        while integer > 0 {
            output.append(integer % 2)
            integer /= 2
        }
        return output
            .map(String.init)
            .joined()
    }
}
