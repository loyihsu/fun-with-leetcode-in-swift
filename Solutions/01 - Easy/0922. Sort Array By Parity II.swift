// Problem: https://leetcode.com/problems/sort-array-by-parity-ii/

class Solution {
    func sortArrayByParityII(_ A: [Int]) -> [Int] {
        var odd = [Int](repeating: 0, count: A.count / 2), even = odd
        var odx = 0, edx = 0
        var result = A
        for item in A {
            if item % 2 == 0 {
                even[edx] = item
                edx += 1
            } else {
                odd[odx] = item
                odx += 1
            }
        }
        edx = 0
        odx = 0
        for idx in result.indices {
            if idx % 2 == 0 {
                result[idx] = even[edx]
                edx += 1
            } else {
                result[idx] = odd[odx]
                odx += 1
            }
        }
        return result
    }
}
