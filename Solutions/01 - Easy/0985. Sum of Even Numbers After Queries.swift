// Problem: https://leetcode.com/problems/sum-of-even-numbers-after-queries/

class Solution {
    func sumEvenAfterQueries(_ A: [Int], _ queries: [[Int]]) -> [Int] {
        var A = A, temp = 0, output = [Int]()
        for item in A where item % 2 == 0 {
            temp += item
        }
        for query in queries {
            if A[query[1]] % 2 == 0 {
                temp -= A[query[1]]
            }
            A[query[1]] += query[0]
            if A[query[1]] % 2 == 0 {
                temp += A[query[1]]
            }
            output.append(temp)
        }
        return output
    }
}
