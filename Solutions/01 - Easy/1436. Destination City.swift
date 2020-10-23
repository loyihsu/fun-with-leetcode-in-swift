// Problem: https://leetcode.com/problems/destination-city/

class Solution {
    func destCity(_ paths: [[String]]) -> String {
        let sources = paths.map { $0.first! }, destines = paths.map { $0.last! }
        return destines.filter { sources.contains($0) == false }.last!
    }
}
