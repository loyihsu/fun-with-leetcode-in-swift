// Problem: https://leetcode.com/problems/destination-city/

class Solution {
    func destCity(_ paths: [[String]]) -> String {
        var sources = paths.map { $0.first! }
        var destines = paths.map { $0.last! }
        var result = destines.filter { sources.contains($0) == false }
        
        return result.last!
    }
}
