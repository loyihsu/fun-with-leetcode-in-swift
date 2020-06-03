// Problem: https://leetcode.com/problems/make-two-arrays-equal-by-reversing-sub-arrays/

class Solution {
    func canBeEqual(_ target: [Int], _ arr: [Int]) -> Bool {
        var tg = [Int](repeating: 0, count: 1001), ar = [Int](repeating: 0, count: 1001)
        
        let tgCount = target.count
        let arCount = arr.count
        
        let max = tgCount > arCount ? tgCount : arCount
        
        for i in 0..<max {
            if i < tgCount {
                tg[target[i]] += 1   
            }
            if i < arCount {
                ar[arr[i]] += 1
            }    
        }
        
        for i in 0..<1001 {
            if tg[i] != ar[i] { return false }
        }
        
        return true
    }
}
