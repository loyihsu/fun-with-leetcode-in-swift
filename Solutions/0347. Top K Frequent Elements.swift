// Problem: https://leetcode.com/problems/top-k-frequent-elements/

class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var map = [Int : Int]()
        var ans = [Int]()
        
        for n in nums {
            if map[n] != nil {
                map[n]! += 1
            } else {
                map[n] = 1
            }
        }
        
        var sortedMap = map.sorted { (a, b) -> Bool in
            a.value > b.value
        }
        
        for i in 0..<k {
            let m = sortedMap.removeFirst().key
            ans.append(m)
        }
        
        return ans
    }
}
