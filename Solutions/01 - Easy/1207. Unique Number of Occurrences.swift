// Problem: https://leetcode.com/problems/unique-number-of-occurrences/

class Solution {
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
        var map = [Int : Int](), occurrenceMap = [Int : Int]()
        arr.forEach { map[$0] = (map[$0] ?? 0) + 1 }
        
        for (_, val) in map {
            occurrenceMap[val] = (occurrenceMap[val] ?? 0) + 1
            if occurrenceMap[val]! > 1 { return false }
        }
        
        return true
    }
}
