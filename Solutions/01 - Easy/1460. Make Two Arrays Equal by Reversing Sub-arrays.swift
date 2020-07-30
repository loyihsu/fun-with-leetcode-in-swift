// Problem: https://leetcode.com/problems/make-two-arrays-equal-by-reversing-sub-arrays/

class Solution {
    func canBeEqual(_ target: [Int], _ arr: [Int]) -> Bool {
        guard target.count == arr.count else { return false }

        var tg = [Int](repeating: 0, count: 1001)
        var ar = [Int](repeating: 0, count: 1001)
        
        for i in 0..<target.count {
            tg[target[i]] += 1   
            ar[arr[i]] += 1
        }
        
        for i in 0..<1001 {
            if tg[i] != ar[i] { return false }
        }
        
        return true
    }
}
