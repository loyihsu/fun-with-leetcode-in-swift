// Problem: https://leetcode.com/problems/defuse-the-bomb/

class Solution {
    func decrypt(_ code: [Int], _ k: Int) -> [Int] {
        var temp = code
        for idx in temp.indices {
            var sum = 0
            for offset in k >= 0 ? 0..<k : k..<0 {
                let constant = k >= 0 ? 1 : code.count
                sum += code[(idx + offset + constant)%code.count]
            }
            temp[idx] = sum
        }
        return temp
    }
}
