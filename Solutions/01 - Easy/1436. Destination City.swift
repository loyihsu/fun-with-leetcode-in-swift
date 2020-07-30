// Problem: https://leetcode.com/problems/destination-city/

class Solution {
    func destCity(_ paths: [[String]]) -> String {
        var sources = paths.map { $0.first! }       // Map all the sources to an array
        var destines = paths.map { $0.last! }       // Map all the destinations to an array
        var result = destines.filter { sources.contains($0) == false }
        // Find the instance of an destination element that is not present in the source 
        
        return result.last!
    }
}
