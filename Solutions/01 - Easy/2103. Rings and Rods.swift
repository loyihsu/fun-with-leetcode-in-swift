// Problem: https://leetcode.com/problems/rings-and-rods/

class Solution {
    func countPoints(_ rings: String) -> Int {
        var list = [Set<Int>](repeating: Set<Int>(), count: 10)
        for idx in list.indices {
            list[idx].reserveCapacity(3)
        }
        var idx = rings.startIndex
        let map: [Character: Int] = ["R": 0, "G": 1, "B": 2]
        while idx < rings.endIndex {
            if let value = Int("\(rings[rings.index(after: idx)])") {
                list[value].insert(map[rings[idx]]!)
            }
            idx = rings.index(idx, offsetBy: 2)
        }
        return list.filter({ $0.count == 3 }).count
    }
}
